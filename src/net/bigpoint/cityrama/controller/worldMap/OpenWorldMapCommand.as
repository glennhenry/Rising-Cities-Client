package net.bigpoint.cityrama.controller.worldMap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.worldmap.WorldMapLayer;
   import net.bigpoint.cityrama.view.worldmap.WorldMapLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenWorldMapCommand extends SimpleCommand
   {
      
      public function OpenWorldMapCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Boolean = false;
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(param1.getBody() is Boolean);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr004c:
                     _loc2_ = param1.getBody() as Boolean;
                     addr0044:
                  }
               }
               var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc3_.mediatorName = WorldMapLayerMediator.NAME;
                  if(_loc4_)
                  {
                     _loc3_.mediatorClass = WorldMapLayerMediator;
                     if(_loc4_ || Boolean(param1))
                     {
                        _loc3_.viewClass = WorldMapLayer;
                        if(!(_loc5_ && _loc2_))
                        {
                           addr00ae:
                           _loc3_.modal = true;
                           if(!_loc5_)
                           {
                              _loc3_.data = _loc2_;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 addr00cb:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                                 if(_loc4_)
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             addr0115:
                                             facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI_MAIN_MENU,true);
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00ae);
            }
            §§goto(addr004c);
         }
         §§goto(addr0044);
      }
   }
}

