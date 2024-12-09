package com.project.services.Impl;

import com.project.model.SortModel;
import com.project.services.SortService;
import com.project.sorting.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SortServiceImpl implements SortService {

    @Autowired
    private HeapSort heapSort;

    @Autowired
    private QuickSort quickSort;

    @Autowired
    private MergeSort mergeSort;

    @Autowired
    private BucketSort bucketSort;

    @Autowired
    private RadixSort radixSort;

    public SortServiceImpl() {

    }

    @Override
    public int[] heapSort(int[] array) {
        return heapSort.sort(array);
    }

    @Override
    public int[] quickSort(int[] array) {
        return quickSort.sort(array);
    }

    @Override
    public int[] mergeSort(int[] array) {
        return mergeSort.sort(array);
    }

    @Override
    public int[] radixSort(int[] array) {
        return radixSort.sort(array);
    }

    @Override
    public int[] bucketSort(int[] array) {
        return bucketSort.sort(array);
    }

    @Override
    public List<SortModel> getHistory() {
        return List.of();
    }
}