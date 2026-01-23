package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialTabbedBookMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenResidentialBookCommand extends SimpleCommand
   {
      
      public function OpenResidentialBookCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Object = null;
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:Object = param1.getBody();
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            if(_loc2_.residential)
            {
               addr003b:
               _loc3_ = new Object();
               if(!_loc6_)
               {
                  _loc3_.residential = _loc2_.residential;
                  if(_loc5_)
                  {
                     if(_loc2_.index)
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           _loc3_.index = _loc2_.index;
                        }
                     }
                  }
               }
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc4_.modal = true;
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  _loc4_.viewClass = ResidentialPopup;
                  if(_loc5_ || Boolean(this))
                  {
                     _loc4_.mediatorClass = ResidentialTabbedBookMediator;
                     if(_loc5_ || Boolean(param1))
                     {
                        addr00e3:
                        _loc4_.mediatorName = ResidentialTabbedBookMediator.NAME;
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           _loc4_.data = _loc3_;
                           if(_loc5_)
                           {
                              addr0106:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                           }
                        }
                     }
                     §§goto(addr0112);
                  }
                  §§goto(addr0106);
               }
               §§goto(addr00e3);
            }
            addr0112:
            return;
         }
         §§goto(addr003b);
      }
   }
}

