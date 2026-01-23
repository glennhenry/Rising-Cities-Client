package net.bigpoint.cityrama.controller.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCurrencyPurchaseCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCurrencyPurchaseCommand()
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
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc6_:CityTreasuryMediator = null;
         var _loc7_:PopupSettingsVo = null;
         var _loc2_:String = param1.getBody() as String;
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         §§push(_loc3_.getCategoryIndexByTabAndCategory(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,_loc2_));
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:Object = {
            "index":CityTreasuryTabProxy.CURRENCY_TAB_INDEX,
            "cat":_loc4_
         };
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(facade.hasMediator(CityTreasuryMediator.NAME))
            {
               _loc6_ = facade.retrieveMediator(CityTreasuryMediator.NAME) as CityTreasuryMediator;
               _loc6_.updateData(_loc5_);
               addr0082:
            }
            else
            {
               _loc7_ = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
               _loc7_.modal = true;
               if(_loc9_)
               {
                  _loc7_.viewClass = CityTreasuryLayer;
                  if(_loc9_ || Boolean(param1))
                  {
                     _loc7_.mediatorClass = CityTreasuryMediator;
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        §§goto(addr00f2);
                     }
                     §§goto(addr0116);
                  }
                  addr00f2:
                  _loc7_.mediatorName = CityTreasuryMediator.NAME;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     addr0116:
                     _loc7_.noModeReset = true;
                     if(_loc9_)
                     {
                        _loc7_.data = _loc5_;
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           addr0136:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc7_);
                        }
                        §§goto(addr0142);
                     }
                     §§goto(addr0136);
                  }
                  §§goto(addr0142);
               }
            }
            addr0142:
            return;
         }
         §§goto(addr0082);
      }
   }
}

