public class StringArrayTest {
    public static List<String> generateStringArray(Integer n) {
        List<String> myList = new List<String>(n);

        for(Integer i=0 ; i<myList.size() ; i++){
            myList[i] = 'Test'+' '+i ;
            System.debug(myList[i]);
        }
        return myList;
    }
}