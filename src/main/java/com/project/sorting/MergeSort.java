package com.project.sorting;

import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class MergeSort {
    public int[] sort(int[] array) {
        if (array.length <= 1) {
            return array;
        }
        int midpoint = array.length / 2;
        int[] left = Arrays.copyOfRange(array, 0, midpoint);
        int[] right = Arrays.copyOfRange(array, midpoint, array.length);
        return merge(sort(left), sort(right));
    }

    private int[] merge(int[] left, int[] right) {
        int[] result = new int[left.length + right.length];
        int i = 0, j = 0, k = 0;
        while (i < left.length && j < right.length) {
            if (left[i] <= right[j]) {
                result[k++] = left[i++];
            } else {
                result[k++] = right[j++];
            }
        }
        while (i < left.length) {
            result[k++] = left[i++];
        }
        while (j < right.length) {
            result[k++] = right[j++];
        }
        return result;
    }

}
