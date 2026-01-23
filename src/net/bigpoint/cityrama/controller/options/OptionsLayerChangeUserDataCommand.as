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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:URLRequest = null;
         var _loc2_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         §§push(_loc2_.profileUri);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || Boolean(this))
         {
            if(_loc3_ != "")
            {
               addr0069:
               _loc4_ = new URLRequest(_loc3_);
               if(_loc5_)
               {
                  navigateToURL(_loc4_,"_self");
               }
            }
            return;
         }
         §§goto(addr0069);
      }
   }
}

