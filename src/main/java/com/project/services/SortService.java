package com.project.services;

import com.project.model.SortModel;

import java.util.List;

public interface SortService {
    int[] heapSort(int[] array);

    int[] quickSort(int[] array);

    int[] mergeSort(int[] array);

    int[] radixSort(int[] array);

    int[] bucketSort(int[] array);

    List<SortModel> getHistory();
}

