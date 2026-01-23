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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification;
         var url:String;
         var request:URLRequest;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc5_)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[2] = note.getBody() as String;
                  if(_loc4_ || _loc3_)
                  {
                     request = new URLRequest(url);
                     addr005c:
                  }
                  try
                  {
                     addr0077:
                     navigateToURL(request,"_blank");
                  }
                  catch(err:Error)
                  {
                  }
                  return;
               }
               §§goto(addr005c);
            }
            §§goto(addr0077);
         }
         §§goto(addr005c);
      }
   }
}

