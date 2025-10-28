import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score

def main():
    data = {'Name': ['A', 'B', 'C', 'D'],  
       'Marks': [85, 60, 90, 70],  
       'IQ': [9, 7, 10, 8],
        'Placement' : [1,0,0,1] #target
    }
    
    df = pd.DataFrame(data)
    
    X = df[['Marks', 'IQ']]
    y = df['Placement']
       
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)
    
    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled = scaler.transform(X_test)
      
    model = LogisticRegression()
    model.fit(X_train_scaled, y_train)
      
    y_pred = model.predict(X_test_scaled)
      
    accuracy = accuracy_score(y_test, y_pred)
      
    print("Accuracy:", round(accuracy * 100, 2), "%")
    
if __name__=="__main__":
    main()