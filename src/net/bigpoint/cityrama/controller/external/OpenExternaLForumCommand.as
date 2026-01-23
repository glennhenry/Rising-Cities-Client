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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification;
         var flashvarProxy:FlashVarsProxy;
         var request:URLRequest;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[3] = null;
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§pop().§§slot[1] = param1;
                  §§goto(addr0045);
               }
               §§goto(addr005e);
            }
            §§goto(addr005c);
         }
         addr0045:
         if(!_loc4_)
         {
            addr005e:
            flashvarProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
            addr005c:
         }
         try
         {
            request = new URLRequest(flashvarProxy.forumURL);
            if(_loc5_)
            {
               navigateToURL(request,"_blank");
            }
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               Alert.show("PHP CALL","error only website");
            }
         }
      }
   }
}

