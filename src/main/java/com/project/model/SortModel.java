package com.project.model;


import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;
import java.util.UUID;

public class SortModel {

    @JsonProperty("id")
    private String id = UUID.randomUUID().toString();

    @JsonProperty("array")
    private int[] array;

    @JsonProperty("sortedArray")
    private int[] sortedArray;

    @JsonProperty("algorithm")
    private String algorithm;

//    public SortedArrayHistory(int id, String array, int[] sortedArray, String algorithm) {
//        this.id = id;
//        this.array = array;
//        this.sortedArray = sortedArray;
//        this.algorithm = algorithm;
//    }

    @Override
    public String toString() {
        return "SortModel{" +
                "id='" + id + '\'' +
                ", array=" + Arrays.toString(array) +
                ", sortedArray=" + Arrays.toString(sortedArray) +
                ", algorithm='" + algorithm + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public int[] getArray() {
        return array;
    }

    public void setArray(int[] array) {
        this.array = array;
    }

    public int[] getSortedArray() {
        return sortedArray;
    }

    public void setSortedArray(int[] sortedArray) {
        this.sortedArray = sortedArray;
    }

    public String getAlgorithm() {
        return algorithm;
    }

    public void setAlgorithm(String algorithm) {
        this.algorithm = algorithm;
    }
}
