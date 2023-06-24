using System;

namespace Algorithms
{
    class AlgorithmsSolution
    {
        public void Execution()
        {
            // ExecuteSolveMeFirst();
            ExecuteNewYearChaos();
        }

        void ExecuteSolveMeFirst()
        {
            int a = 10;
            int b = 20;

            SolveMeFirst smf = new SolveMeFirst();
            Console.WriteLine($"Output for SolveMeFirst: {smf.solveMeFirst(a, b)}");
        }

        void ExecuteNewYearChaos()
        {
            List<int> queue = new List<int>() { 1, 2, 5, 3, 7, 8, 6, 4 };

            NewYearChaos nyc = new NewYearChaos();

            nyc.minimumBribes(queue);
        }

    }
}