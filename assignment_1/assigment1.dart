abstract class BankAccount {
    //Private fields for account number, account holder name, and balance
    int _accNumber;
    String _accHolderName;
    double _balance;

    BankAccount(this._accNumber, this._accHolderName, this._balance);

    // Abstract methods for withdraw() and deposit()
    void withdraw(double amt){}
    void deposit(double amt){}

    //A method to display account information
    void displayInfo(){
        print("Account Name : ${_accHolderName}");
        print("Account Number : ${_accNumber}");
        print("Account Balance : ${_balance} dollars");
    }

    //Proper encapsulation with getters/setters
    int get getaccNum => _accNumber;
    String get getaccHolderName => _accHolderName;
    double get getaccBalance => _balance;

    set setBalance(double newBalance){
        if(newBalance >= 0){
            _balance=newBalance;
        }else{
            "Balance cannot be set negative(Below 0)";
        }
    }
}

//Create an interface/abstract class InterestBearing for accounts that earn interest
abstract class InterestBearing {
  void calculateInterest();
}

//Saving Account:
class savingAccount extends BankAccount implements InterestBearing{
    double _minBalance = 500;
    double _interestRate = 0.02;
    double _withdrawlCount = 0;
    double _withdrawlLimit = 3;
    savingAccount(super._accNumber, super._accHolderName, super._balance);
    
    @override
    void deposit(double amt){
        if(amt>0){
            _balance+=amt;
            print("After deposited balance : ${_balance}, Deposited Amount : ${amt}");
        }
    }
    //Withdrawal limit of 3 transactions per month
    @override
    void withdraw(double amt){
        if(_withdrawlCount>=_withdrawlLimit){
            print("User withdrawl limit reached(3)");
            return;
        }
        //Minimum balance requirement of $500
        if(_balance-amt<_minBalance){
            print("Can't withdraw money, Min balance requires ${_minBalance}");
        }else{
        _balance-=amt;
        _withdrawlCount++;
        print("After withdraw balance : ${_balance}, Wihtdrawn Amount: ${amt}");
        }
    }
    //2% interest calculation method
    @override
    void calculateInterest() {
    double Interest = _balance * _interestRate;
    _balance+=Interest;
    print("After inserting Interest : ${_balance}, Interest Amount : ${Interest}");
    }
}

//Checking Account
class checkingAccount extends BankAccount{
    double fine = 35;
    checkingAccount(super.accNumber, super.accHolderName, super.balance);
    
    @override
    void deposit(double amt){
        if(amt>0){
            _balance+=amt;
            print("After deposited balance : ${_balance}, Deposited Amount : ${amt}");
        }
    }
    //$35 overdraft fee if balance goes below $0
    @override
    void withdraw(double amt){
        if(_balance<0){
            _balance-=fine;
            print("Since user balance has gone into negative ${_balance}, User has to pay overdraft fee : ${fine}");
        }
    }
}

//Premium Account
class premiumAccount extends BankAccount implements InterestBearing{
    double _minBalance = 10000;
    double _interestRate = 0.05;
    premiumAccount(super.accNumber, super.accHolderName, super.balance);
    
    @override
    void deposit(double amt){
        if(amt>0){
            _balance+=amt;
            print("After deposited balance : ${_balance}, Deposited Amount : ${amt}");
        }
    }
    //Minimum balance of $10,000
    @override
    void withdraw(double amt){
        if(_balance-amt<_minBalance){
            print("User current balance : ${_balance}, so user fall short of minimum balance ${_minBalance}");
            return;
        }
    }
    //5% interest calculation
    @override
    void calculateInterest() {
        double Interest = _balance * _interestRate;
        _balance+=Interest;
        print("After inserting Interest : ${_balance}, Interest Amount : ${Interest}"); 
    }
}

//Bank Class
class Bank{
    List<BankAccount> _accounts = [];

    //Create new accounts
    void createAccount(BankAccount account){
        _accounts.add(account);
        print("Account created for ${account._accHolderName}");
    }

    //Find accounts by account number
    BankAccount? findAccount(int accNumber){
        for(var account in _accounts){
            if(accNumber==account._accNumber){
                return account;
            }
        }
        print("Account not found!");
        return null;
    }

    //Transfer money between accounts
    void transfer(int fromAccNo, int toAccNo, double amt){
        var fromAccount = findAccount(fromAccNo);
        var toAccount = findAccount(toAccNo);

        if(fromAccount == null || toAccount == null){
            print("Transfer failed account unrecognized!");
        }else{
            fromAccount.withdraw(amt);
            toAccount.deposit(amt);
            print("Transfer money from ${fromAccNo} Dollar ${amt} to ${toAccNo}");
        }
    }

    //Generate reports of all accounts
    void showAllAccounts() {
        for (var account in _accounts) {
            account.displayInfo();
    }
  }
}

void main() {
  Bank bank = Bank();

  var acc1 = savingAccount(1001, "Nakumi", 1000);
  var acc2 = checkingAccount(1002, "Amitu", 500);
  var acc3 = premiumAccount(1003, "Ishan", 15000);

  bank.createAccount(acc1);
  bank.createAccount(acc2);
  bank.createAccount(acc3);

  acc1.deposit(200);
  acc1.withdraw(300);
  acc1.calculateInterest();

  acc2.withdraw(600);
  acc3.calculateInterest();

  bank.transfer(1001, 1003, 200);
  bank.showAllAccounts();
}