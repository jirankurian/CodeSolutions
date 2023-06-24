namespace DataStructures
{
    class DataStructuresSolution
    {
        public void Execution()
        {
            ExecuteArraysDs();
        }

        void ExecuteArraysDs()
        {
            List<int> a = new List<int> { 1, 4, 3, 2 };

            List<int> reversedArray = ArraysDS.reverseArray(a);

            foreach (int value in reversedArray)
            {
                Console.WriteLine(value);
            }
        }
    }
}