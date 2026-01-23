package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.miniLayer.DemolitionQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenDemolitionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenDemolitionMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(_loc4_ || Boolean(_loc3_))
         {
            if(_loc2_)
            {
               addr0034:
               _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc3_.modal = true;
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     _loc3_.noModeReset = true;
                     if(!_loc5_)
                     {
                        _loc3_.viewClass = QueryMiniLayer;
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr0099:
                           _loc3_.mediatorClass = DemolitionQueryMiniLayerMediator;
                           if(_loc4_)
                           {
                              _loc3_.mediatorName = DemolitionQueryMiniLayerMediator.NAME;
                              if(_loc4_)
                              {
                                 addr00b5:
                                 _loc3_.data = _loc2_;
                                 if(_loc4_)
                                 {
                                    addr00bf:
                                    facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00b5);
            }
            addr00ca:
            return;
         }
         §§goto(addr0034);
      }
   }
}

