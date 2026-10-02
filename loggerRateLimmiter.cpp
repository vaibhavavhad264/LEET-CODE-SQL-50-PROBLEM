#include<bits/stdc++.h>
using namespace std;

int main(){
    pair<int, string> logs[5];
    logs[0] = {1, "foo"};
    logs[1] = {2, "bar"};
    logs[2] = {3, "foo"};
    logs[3] = {8, "fba"};
    logs[4] = {11, "foo"};

    unordered_map<string, int> hash;

    for(auto log: logs){
        if(hash.find(log.second) == hash.end()){
            cout << " True ";
            hash[log.second] = log.first;
        }
        else{
            int endTime = hash[log.second];
            if(log.first - endTime >= 10){
                cout << " True ";
                hash[log.second] = log.first;
                hash[log.second] = log.first;
            }
            else{
                cout << " False ";
                
            }
        }
    }
}