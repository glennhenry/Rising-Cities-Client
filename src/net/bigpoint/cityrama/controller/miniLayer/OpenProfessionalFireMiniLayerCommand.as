package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ProfessionalFireMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenProfessionalFireMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenProfessionalFireMiniLayerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(_loc6_)
         {
            if(!isNaN(_loc3_))
            {
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc4_.modal = true;
               addr0049:
               if(_loc6_)
               {
                  _loc4_.viewClass = QueryMiniLayer;
                  if(_loc6_)
                  {
                     _loc4_.mediatorClass = ProfessionalFireMiniLayerMediator;
                     if(_loc6_ || Boolean(param1))
                     {
                        §§goto(addr0092);
                     }
                     §§goto(addr00b6);
                  }
                  addr0092:
                  _loc4_.mediatorName = ProfessionalFireMiniLayerMediator.NAME;
                  if(_loc6_ || Boolean(this))
                  {
                     addr00b6:
                     _loc4_.data = _loc3_;
                     if(!_loc5_)
                     {
                        addr00c1:
                        _loc4_.modal = true;
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                        }
                     }
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00c1);
            }
            addr00e1:
            return;
         }
         §§goto(addr0049);
      }
   }
}

