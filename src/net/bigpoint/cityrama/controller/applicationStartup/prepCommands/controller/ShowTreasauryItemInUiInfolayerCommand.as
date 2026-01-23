package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowTreasauryItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowTreasauryItemInUiInfolayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:Point = Point(param1.getBody().pt);
         var _loc3_:uint = uint(param1.getBody().lineId);
         var _loc4_:String = param1.getBody().type;
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(LocaUtils);
            §§push("rcl.guiinfolayer.treasury");
            §§push("rcl.guiinfolayer.treasury.");
            if(!_loc9_)
            {
               §§push(§§pop() + _loc4_);
               if(_loc8_)
               {
                  addr006d:
                  §§push(§§pop() + ".flavor");
               }
               §§push(§§pop().getString(§§pop(),§§pop()));
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     if(_loc8_ || Boolean(param1))
                     {
                        addr00a6:
                        §§push(LocaUtils);
                        §§push("rcl.guiinfolayer.treasury");
                        §§push("rcl.guiinfolayer.treasury.");
                        if(_loc8_)
                        {
                           addr00ce:
                           §§push(§§pop() + _loc4_);
                           if(!_loc9_)
                           {
                              addr00bf:
                              §§push(§§pop() + ".name.capital");
                           }
                           §§push(§§pop().getString(§§pop(),§§pop()));
                           if(_loc8_)
                           {
                              addr00cd:
                              §§push(§§pop());
                           }
                           _loc6_ = §§pop();
                           var _loc7_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc3_,_loc2_,_loc5_,_loc6_);
                           _loc7_.width = 300;
                           §§goto(addr00d0);
                        }
                        §§goto(addr00bf);
                     }
                     addr00d0:
                     if(_loc8_ || Boolean(param1))
                     {
                        sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc7_,param1.getType());
                     }
                     return;
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00cd);
            }
            §§goto(addr006d);
         }
         §§goto(addr00a6);
      }
   }
}

