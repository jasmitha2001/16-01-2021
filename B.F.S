class Solution
{
    public ArrayList<Integer> bfsOfGraph(int V, ArrayList<ArrayList<Integer>> adj)
    {
        boolean []visited =new boolean[V];
        LinkedList<Integer> queue=new LinkedList<>();
        ArrayList<Integer> result=new ArrayList<>();
        visisted[0]=true;
        queue.add(0);
        while(!queue.isEmpty()){
            int size = queue.size();
            for(int j=0;j<size;j++){       
                int curr=queue.poll();
                for(Integer i:adj.get(curr)){
                    if(!visited[i]){
                        visited[i]=true;
                        queue.add(i);
                        result.add(i);
                    }
                }
            }
        }
        return result;
    }
}