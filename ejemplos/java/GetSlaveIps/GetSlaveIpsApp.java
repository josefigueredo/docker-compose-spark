import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaSparkContext;

import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Obtiene las ips de los nodos
 *
 * @author josefigueredo 2018/12/30
 */
public class GetSlaveIpsApp {

    public static void main(String[] args) {
        SparkConf conf = new SparkConf().setAppName(GetSlaveIpsApp.class.getSimpleName());
        JavaSparkContext sc = new JavaSparkContext(conf);

        List<String> ips = sc.parallelize(Collections.nCopies(100, 0), 100)
                .map(i -> InetAddress.getLocalHost().getHostAddress())
                .collect()
                .stream()
                .distinct()
                .sorted()
                .collect(Collectors.toList());

        System.out.println("All slave IPs: " + ips);

        sc.stop();
    }
}