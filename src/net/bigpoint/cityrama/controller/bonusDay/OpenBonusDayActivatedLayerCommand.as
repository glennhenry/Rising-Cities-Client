package net.bigpoint.cityrama.controller.bonusDay
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.bonusDay.BonusDayActivatedLayerMediator;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayActivatedLayer;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenBonusDayActivatedLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenBonusDayActivatedLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc7_:TimerBarComponentVo = null;
         var _loc8_:PopupSettingsVo = null;
         var _loc9_:ImprovementVo = null;
         var _loc2_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         §§push(1000 * 60);
         if(_loc11_)
         {
            §§push(60);
            if(_loc11_ || Boolean(param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc11_ || Boolean(this))
               {
                  addr008a:
                  addr009a:
                  §§push(§§pop() * 24);
                  if(_loc11_ || Boolean(param1))
                  {
                     addr0099:
                     §§push(§§pop());
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:Boolean = param1.getBody() as Boolean;
                  §§push(_loc6_);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc11_)
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(!_temp_6)
                        {
                           if(_loc11_)
                           {
                              addr00bf:
                              §§pop();
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 §§push(_loc3_.userdata);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop().lastTimeBonusDayWasShown);
                                    if(_loc11_ || Boolean(this))
                                    {
                                       §§push(_loc5_);
                                       if(!_loc10_)
                                       {
                                          addr00f2:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc4_.currentTimeStamp);
                                       }
                                       §§push(§§pop() < §§pop());
                                       if(_loc11_)
                                       {
                                          §§goto(addr00fe);
                                       }
                                       §§goto(addr0155);
                                    }
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr014b);
                           }
                           §§goto(addr0155);
                        }
                     }
                     addr00fe:
                     if(§§pop())
                     {
                        if(_loc11_ || Boolean(this))
                        {
                           addr0122:
                           _loc3_.userdata.lastTimeBonusDayWasShown = _loc4_.currentTimeStamp;
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              _loc3_.flush();
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr014b);
                              }
                           }
                           §§goto(addr0159);
                        }
                        addr014b:
                        addr0155:
                        if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
                        {
                           addr0159:
                           _loc7_ = new TimerBarComponentVo();
                           _loc7_.currentTime = _loc4_.currentTimeStamp;
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
                              {
                                 addr018a:
                                 _loc9_ = _loc2_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    _loc7_.startTime = _loc9_.startTime;
                                    if(!_loc10_)
                                    {
                                       addr01b7:
                                       §§push(_loc7_);
                                       §§push(_loc9_.expirationTime);
                                       if(_loc11_ || Boolean(param1))
                                       {
                                          §§push(§§pop() - _loc9_.startTime);
                                       }
                                       §§pop().cycleLength = §§pop();
                                       if(_loc11_ || Boolean(param1))
                                       {
                                          _loc7_.targetTime = _loc9_.expirationTime;
                                       }
                                    }
                                    addr01ed:
                                    _loc8_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                    _loc8_.mediatorName = BonusDayActivatedLayerMediator.NAME;
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       _loc8_.mediatorClass = BonusDayActivatedLayerMediator;
                                       if(!_loc10_)
                                       {
                                          _loc8_.viewClass = BonusDayActivatedLayer;
                                          addr0220:
                                          if(_loc11_)
                                          {
                                             _loc8_.modal = true;
                                             if(_loc11_)
                                             {
                                                addr0245:
                                                _loc8_.data = _loc7_;
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   addr0259:
                                                   facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc8_);
                                                }
                                             }
                                             §§goto(addr0265);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr0259);
                                    }
                                    §§goto(addr0220);
                                 }
                                 §§goto(addr01b7);
                              }
                              §§goto(addr01ed);
                           }
                           §§goto(addr018a);
                        }
                        §§goto(addr0265);
                     }
                     addr0265:
                     return;
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0099);
            }
            §§goto(addr008a);
         }
         §§goto(addr009a);
      }
   }
}

