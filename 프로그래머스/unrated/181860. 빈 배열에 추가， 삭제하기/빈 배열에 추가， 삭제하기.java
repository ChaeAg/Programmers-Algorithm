import java.util.*;
class Solution {
    public List<Integer> solution(int[] arr, boolean[] flag) {
        List<Integer> list = new ArrayList();
        
        for(int i=0; i<arr.length; i++){
                if(flag[i]){
                    for(int k=0; k<arr[i]*2; k++){
                        list.add(arr[i]);
                    }
                }
                else{
                    for(int k=0; k<arr[i]; k++){
                        list.remove(list.size() - 1);
                    }
                }
        }
        
        return list;
    }
}