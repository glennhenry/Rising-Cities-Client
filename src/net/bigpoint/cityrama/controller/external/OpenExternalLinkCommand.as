package net.bigpoint.cityrama.controller.external
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenExternalLinkCommand extends SimpleCommand
   {
      
      public function OpenExternalLinkCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification = param1;
         var url:String = note.getBody() as String;
         var request:URLRequest = new URLRequest(url);
         try
         {
            navigateToURL(request,"_blank");
         }
         catch(err:Error)
         {
         }
      }
   }
}

