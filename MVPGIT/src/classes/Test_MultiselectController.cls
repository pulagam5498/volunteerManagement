@isTest
public class Test_MultiselectController {
  static testmethod void TestMultiselectController(){
List<SelectOption> leftOptions=new List<SelectOption>();

   leftOptions.add(new SelectOption('value1', 'label1', false));
    leftOptions.add(new SelectOption('value2', 'label2', false));
      
      List<SelectOption> rightOptions=new List<SelectOption>();

   rightOptions.add(new SelectOption('value1', 'label1', false));
    rightOptions.add(new SelectOption('value2', 'label2', false));

   
   MultiselectController multiSelectctrl=new MultiselectController(); 
   multiSelectctrl.setOptions(leftOptions,'value1');
      multiSelectctrl.rightOptionsHidden='value1';
      multiSelectctrl.leftOptionsHidden='value2';
      
 }
 }