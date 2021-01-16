class Solution
{
   
    public ArrayList<Integer> result=new ArrayList<Integer>();
    public boolean visited[];
    public ArrayList<Integer> dfsOfGraph(int V, ArrayList<ArrayList<Integer>> adj)
    {
        
        visited=new boolean[V];
        dfs(0,adj);
        return result;
        
        
    }
    public void dfs(int source, ArrayList<ArrayList<Integer>> adj){
        visited[source]=true;
        result.add(source);
        for(int i:adj.get(source)){
            if(!visited[i]){
                dfs(i,adj);
            }
        }
    }
}