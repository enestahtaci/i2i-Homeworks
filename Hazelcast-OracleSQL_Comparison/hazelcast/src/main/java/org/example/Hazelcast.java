package org.example;

import com.hazelcast.config.Config;
import com.hazelcast.core.HazelcastInstance;
import com.hazelcast.map.IMap;

import java.util.Random;
import java.util.stream.IntStream;

public class Hazelcast {

    public static void main(String[] args) {
        Config config = new Config();
        HazelcastInstance hazelcastInstance = com.hazelcast.core.Hazelcast.newHazelcastInstance(config);

        IMap<Integer, Integer> map = hazelcastInstance.getMap("randomNumbers");

        int[] sizes = {20000, 100000};
        Random random = new Random();

        for (int size : sizes) {
            // Put random numbers
            long startPutTime = System.nanoTime();
            IntStream.range(0, size).forEach(i -> map.put(i, random.nextInt()));
            long endPutTime = System.nanoTime();

            System.out.println("Time to put " + size + " numbers: " + (endPutTime - startPutTime) / 1_000_000 + " ms");

            // Get random numbers
            long startGetTime = System.nanoTime();
            IntStream.range(0, size).forEach(i -> map.get(random.nextInt(size)));
            long endGetTime = System.nanoTime();

            System.out.println("Time to get " + size + " numbers: " + (endGetTime - startGetTime) / 1_000_000 + " ms");
        }

        hazelcastInstance.shutdown();
    }
}
