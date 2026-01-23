package net.bigpoint.cityrama.controller.featureScreens
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featureScreens.BigFeatureScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.FeatureCharacterScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.BigFeatureScreenPopup;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureCharacterScreen;
   import net.bigpoint.cityrama.view.quest.InfrastructureIntroductionScreenMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.InfrastructureIntroScreen;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenBigFeatureOrCharacterScreenCommand extends SimpleCommand implements ICommand
   {
      
      private var _featP:FeatureScreenProxy;
      
      public function OpenBigFeatureOrCharacterScreenCommand()
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Object = param1.getBody();
         var _loc3_:Boolean = Boolean(_loc2_.quest);
         var _loc4_:int = int(_loc2_.screen);
         var _loc5_:int = int(_loc2_.feature);
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     this.openCharacterScreen(_loc4_,_loc3_);
                     if(_loc7_ || _loc3_)
                     {
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr0094);
               }
               addr0080:
               §§goto(addr0082);
            }
            addr0082:
            if(_loc5_)
            {
               if(!(_loc6_ && Boolean(param1)))
               {
                  addr0094:
                  this.openBigFeatureScreen(_loc5_,_loc3_);
               }
            }
            return;
         }
         §§goto(addr0080);
      }
      
      private function openBigFeatureScreen(param1:int, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         if(_loc6_)
         {
            _loc3_.modal = true;
            if(!(_loc5_ && param2))
            {
               addr003c:
               _loc3_.viewClass = BigFeatureScreenPopup;
               if(_loc6_ || Boolean(_loc3_))
               {
                  _loc3_.mediatorClass = BigFeatureScreenMediator;
                  if(_loc6_)
                  {
                     §§goto(addr006a);
                  }
               }
               §§goto(addr0079);
            }
            addr006a:
            _loc3_.mediatorName = BigFeatureScreenMediator.NAME;
            if(_loc6_)
            {
               addr0079:
               §§push(_loc3_);
               §§push(param2);
               if(_loc6_)
               {
                  §§push(!§§pop());
               }
               §§pop().openedByUserAxn = §§pop();
            }
            var _temp_4:* = this.featureScreenProxy.getBigFeatureScreenVo(param1);
            var _loc4_:BigFeatureScreenVO = this.featureScreenProxy.getBigFeatureScreenVo(param1);
            if(_loc4_)
            {
               if(_loc6_ || Boolean(param1))
               {
                  _loc3_.data = {
                     "feature":_loc4_,
                     "quest":param2
                  };
                  if(_loc6_)
                  {
                     addr00c5:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00c5);
            }
            addr00d0:
            return;
         }
         §§goto(addr003c);
      }
      
      private function openCharacterScreen(param1:int, param2:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:FeatureCharacterScreenVo = null;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         if(_loc5_ || param2)
         {
            _loc3_.modal = true;
            if(!_loc6_)
            {
               §§push(_loc3_);
               §§push(param2);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  §§push(!§§pop());
               }
               §§pop().openedByUserAxn = §§pop();
               if(!(_loc6_ && Boolean(this)))
               {
                  if(param1 == QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION)
                  {
                     if(!_loc6_)
                     {
                        addr0075:
                        _loc3_.viewClass = InfrastructureIntroScreen;
                        if(!_loc6_)
                        {
                           _loc3_.mediatorClass = InfrastructureIntroductionScreenMediator;
                           if(_loc5_)
                           {
                              addr009a:
                              _loc3_.mediatorName = InfrastructureIntroductionScreenMediator.NAME;
                              if(!_loc6_)
                              {
                                 _loc3_.data = {"quest":param2};
                                 if(!_loc5_)
                                 {
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr009a);
                  }
                  else
                  {
                     _loc3_.viewClass = FeatureCharacterScreen;
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        addr00d1:
                        _loc3_.mediatorClass = FeatureCharacterScreenMediator;
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           addr00e6:
                           _loc3_.mediatorName = FeatureCharacterScreenMediator.NAME;
                           if(!_loc6_)
                           {
                              _loc4_ = this.featureScreenProxy.getFeatureCharacterScreenVo(param1);
                              addr00f5:
                              if(_loc5_ || param2)
                              {
                                 _loc3_.data = {
                                    "quest":param2,
                                    "vo":_loc4_
                                 };
                              }
                              addr012b:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0075);
         }
         §§goto(addr009a);
      }
      
      private function get featureScreenProxy() : FeatureScreenProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._featP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._featP = facade.retrieveProxy(FeatureScreenProxy.NAME) as FeatureScreenProxy;
                  }
               }
               addr004d:
               return this._featP;
            }
         }
         §§goto(addr004d);
      }
   }
}

