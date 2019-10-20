# AlertExample
Customize Alert  Example with easiest way !

### How to use it ?
- Drag Alert.swift to your project
- on anywhere you want to display alert with buttons 
call it like this :

   ```
   Alert.showAlertWithButtons(on: self, title: "Do you want to delete it ?", message: "", options: "Yes","No") { (option) in
                 
                 switch(option) {
                    //mean the 1st button
                 case 0:
                     // Yes
                    print("YES")
                     break
                     
                    //mean the 2nd button
                 case 1:
                     // No :do nothing
                        print("NO")
                     break

                 
                 default:
                     break
                 }

             }
             ```

