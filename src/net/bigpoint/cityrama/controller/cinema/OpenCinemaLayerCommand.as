package net.bigpoint.cityrama.controller.cinema
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cinema.CinemaLayerMediator;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCinemaLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCinemaLayerCommand()
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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(_loc2_.disabledByAID);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc5_ || Boolean(this))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr0092);
                     }
                  }
               }
            }
            addr008e:
            §§push(_loc2_.inMaintenance);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               addr0092:
               _loc3_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc3_.modal = true;
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     _loc3_.mediatorName = CinemaLayerMediator.NAME;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        _loc3_.mediatorClass = CinemaLayerMediator;
                        if(_loc5_)
                        {
                           addr00e4:
                           _loc3_.viewClass = CinemaLayer;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr0107:
                              _loc3_.data = _loc2_.cinemaLayerVo;
                              if(_loc5_ || Boolean(this))
                              {
                                 addr011c:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                              }
                           }
                           §§goto(addr0127);
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr0107);
                  }
                  §§goto(addr0127);
               }
               §§goto(addr00e4);
            }
            addr0127:
            return;
         }
         §§goto(addr0092);
      }
   }
}

