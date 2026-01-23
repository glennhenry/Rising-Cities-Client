package net.bigpoint.cityrama.controller.external
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenExternaLForumCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenExternaLForumCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var request:URLRequest = null;
         var note:INotification = param1;
         var flashvarProxy:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         try
         {
            request = new URLRequest(flashvarProxy.forumURL);
            navigateToURL(request,"_blank");
         }
         catch(e:Error)
         {
            Alert.show("PHP CALL","error only website");
         }
      }
   }
}

