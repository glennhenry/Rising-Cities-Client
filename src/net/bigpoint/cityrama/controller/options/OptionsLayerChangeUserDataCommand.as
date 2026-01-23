package net.bigpoint.cityrama.controller.options
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsLayerChangeUserDataCommand extends SimpleCommand
   {
      
      public function OptionsLayerChangeUserDataCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         var _loc3_:String = _loc2_.profileUri;
         if(_loc3_ != "")
         {
            var _loc4_:URLRequest = new URLRequest(_loc3_);
            navigateToURL(null,"_self");
         }
      }
   }
}

