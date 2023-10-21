#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

class MainWindow : public QMainWindow{
    Q_OBJECT

public:
    MainWindow(){
        setMinimumSize(640,480);
    }
    ~MainWindow(){}
};
#endif // MAINWINDOW_H
