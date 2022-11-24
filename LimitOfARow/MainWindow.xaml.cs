using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
//Напишете програма, която по зададен първи член връща отговор колко е границата и по за-
//дадени пет достатъчно големи индекса извежда съответните членове на редицата с добра точност.
namespace LimitOfARow
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Fields
        //equation f(x)=(2*x*x+x+6)/ (x+6)
        private double firstMember;
        private int i01, i02, i03, i04, i05;

        #endregion
        public MainWindow()
        {
            InitializeComponent();
        }


      
        private bool Validate(string s)
        {
            int points = 0;
            for (int i = 0; i < s.Length; i++)
            {
                if (!Char.IsNumber(s.ElementAt(i)) && s.ElementAt(i) != '-' && s.ElementAt(i) != ',') return false;
                else if (s.ElementAt(i) == '-' && i != 0) return false;
                else if (s.ElementAt(i) == ',') points++;
            }
            return points <= 1;
        }
        string findLimit(string member)
        {
            string l = "";
            firstMember = Double.Parse(member);
            if (firstMember < -6) l = "-Infinity";
            else if ((firstMember > -6 && firstMember < -2) || (firstMember > 3)) l = "+Infinity";
            else if (firstMember >= -1.5 && firstMember <= 2) l = "2";
            else l = "3";

            return l;
        }

        double calcMember(int i, double first, int count=0)
        {
            if (i == 0) return first;          
            double next= (2 *first * first + first + 6) / (first + 6);
            if (count == i) return next;
            return calcMember(i, next,  ++count);
        }
        private void members_Click(object sender, RoutedEventArgs e)
        {
            if (givenFirst.Text.Equals("") || i1.Text.Equals("") || i2.Text.Equals("") || i3.Text.Equals("") || i4.Text.Equals("") || i5.Text.Equals(""))
            {
                MessageBox.Show("Please, enter input!");
            }
            else
            {
                i01 = Int32.Parse(i1.Text);
                i02 = Int32.Parse(i2.Text);
                i03 = Int32.Parse(i3.Text);
                i04 = Int32.Parse(i4.Text);
                i05 = Int32.Parse(i5.Text);

                a1.Text = string.Format( "{0:0.000}",calcMember(i01, firstMember));
                a2.Text = string.Format("{0:0.000}",calcMember(i02, firstMember));
                a3.Text = string.Format("{0:0.000}",calcMember(i03, firstMember));
                a4.Text = string.Format("{0:0.000}",calcMember(i04, firstMember));
                a5.Text = string.Format("{0:0.000}", calcMember(i05, firstMember));
            }
        }

        private void Calc_Click(object sender, RoutedEventArgs e)
        {
            if (givenFirst.Text.Equals(""))
            {
                MessageBox.Show("Please, enter input!");
            }
            else if (givenFirst.Text == "-6")
            {
                MessageBox.Show("The function is not defined here.\n Cannot devide by 0.");
            }
            else
            {
                if (Validate(givenFirst.Text) == false)
                {
                    MessageBox.Show("Only numbers are allowed!");

                }
                else
                {
                    limit.Text = findLimit(givenFirst.Text);
                }
            }
        }

    }
}
