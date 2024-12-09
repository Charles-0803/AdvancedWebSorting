package com.project.services;

import com.project.model.SortModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DataManager {
    List<SortModel> history = new ArrayList<>();

    public List<SortModel> getHistory() {
        return history;
    }

    public void addToHistory(SortModel entry) {
        history.add(entry);
    }



    public void removeFromHistory(String id) {
        for (SortModel operation : history)  {
            if (operation.getId().equals(id)) {
                history.remove(operation);
            }
        }
    }
}
