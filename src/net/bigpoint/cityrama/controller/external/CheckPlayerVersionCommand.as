package net.bigpoint.cityrama.controller.external
{
   import com.greensock.TweenMax;
   import flash.system.Capabilities;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckPlayerVersionCommand extends SimpleCommand
   {
      
      public function CheckPlayerVersionCommand()
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
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:String = Capabilities.version;
         var _loc3_:Array = _loc2_.split(",");
         var _loc4_:Array = _loc3_[0].split(" ");
         var _loc5_:Number = parseInt(_loc4_[1]);
         var _loc6_:Number = parseInt(_loc3_[1]);
         if(!_loc8_)
         {
            §§push(_loc5_);
            if(_loc7_)
            {
               §§push(11);
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc8_ && Boolean(this)))
                     {
                        addr00ad:
                        addr00ab:
                        addr00a9:
                        if(_loc6_ >= 7)
                        {
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              return;
                           }
                        }
                        else
                        {
                           addr00c6:
                           TweenMax.delayedCall(5,sendNotification,[MiniLayerConstants.OPEN_MINI_FLASH_PLAYER_UPDATE_PROMOTION]);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00c6);
                  }
                  addr00d8:
                  return;
               }
               §§goto(addr00ad);
            }
            §§goto(addr00ab);
         }
         §§goto(addr00a9);
      }
   }
}

