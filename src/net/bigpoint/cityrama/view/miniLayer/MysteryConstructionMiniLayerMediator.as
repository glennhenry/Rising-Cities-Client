package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MysteryConstructionMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MysteryConstructionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MysteryConstructionMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "MysteryConstructionMiniLayerMediator";
      }
      
      private var _miniLayerProxy:MiniLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObject:BillboardObject;
      
      private var _layerData:ConstructionMiniLayerVo;
      
      private var _configProxy:GameConfigProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function MysteryConstructionMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0042:
               this._miniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
               if(!_loc3_)
               {
                  this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0083:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
                  return;
               }
            }
            §§goto(addr0083);
         }
         §§goto(addr0042);
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._layerData)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr003c:
                  this.component.setData(this._layerData);
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function setListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().finishConstruction.addEventListener(MouseEvent.CLICK,this.onFinishConstruction);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     §§pop().addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleTimeUp);
                     if(_loc2_ || _loc2_)
                     {
                        addr0074:
                        this.component.addEventListener(Event.CLOSE,this.finalCall);
                        addr0071:
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0074);
               }
               addr0080:
               return;
            }
            §§goto(addr0074);
         }
         §§goto(addr0071);
      }
      
      private function handleTimeUp(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!_loc2_)
            {
               this.finalCall();
            }
         }
      }
      
      private function onFinishConstruction(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:PhaseDTO = null;
         if(_loc8_ || _loc2_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc8_ || Boolean(param1))
         {
            §§push(this._billboardObject);
            if(_loc8_ || Boolean(this))
            {
               §§push(§§pop());
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  var _temp_6:* = §§pop();
                  §§push(_temp_6);
                  §§push(_temp_6);
                  if(_loc8_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              §§push(this._billboardObject);
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop().billboardObjectVo);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       addr00bd:
                                       var _temp_11:* = §§pop();
                                       addr00be:
                                       §§push(_temp_11);
                                       if(_temp_11)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr00c8:
                                             §§pop();
                                             if(_loc8_ || Boolean(_loc2_))
                                             {
                                                addr00d7:
                                                §§push(this._billboardObject);
                                                if(!(_loc7_ && Boolean(_loc3_)))
                                                {
                                                   addr00e9:
                                                   §§push(§§pop().billboardObjectVo);
                                                   if(_loc8_)
                                                   {
                                                      addr00fe:
                                                      §§push(§§pop().buildingDTO);
                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                      {
                                                         addr0110:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && Boolean(this)))
                                                            {
                                                               addr012b:
                                                               addr0128:
                                                               addr0126:
                                                               addr0122:
                                                               §§push(this._billboardObject.billboardObjectVo.buildingDTO.id);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               _loc2_ = §§pop();
                                                            }
                                                            §§goto(addr0135);
                                                         }
                                                         §§goto(addr01f4);
                                                      }
                                                      §§goto(addr012b);
                                                   }
                                                   §§goto(addr0128);
                                                }
                                                §§goto(addr0126);
                                             }
                                             §§goto(addr0122);
                                          }
                                       }
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr00fe);
                              }
                              §§goto(addr0126);
                           }
                           addr0135:
                           for each(_loc4_ in this._billboardObject.billboardObjectVo.activePhases)
                           {
                              §§push(_loc4_.config);
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 §§push(§§pop().phaseType);
                                 if(!_loc7_)
                                 {
                                    §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          var _temp_19:* = §§pop();
                                          §§push(_temp_19);
                                          if(!_temp_19)
                                          {
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                addr019c:
                                                §§pop();
                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                {
                                                   addr01b9:
                                                   addr01b8:
                                                   addr01b2:
                                                   addr01af:
                                                   if(_loc4_.config.phaseType != ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc7_ && Boolean(_loc2_))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§push(_loc4_.phaseId);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc3_ = §§pop();
                                                continue;
                                             }
                                          }
                                          §§goto(addr01b9);
                                       }
                                       §§goto(addr019c);
                                    }
                                    §§goto(addr01b8);
                                 }
                                 §§goto(addr01b2);
                              }
                              §§goto(addr01af);
                           }
                           if(!_loc7_)
                           {
                              addr01f4:
                              facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,{
                                 "buildingId":_loc2_,
                                 "phaseId":_loc3_,
                                 "boost":true
                              });
                              if(_loc8_ || Boolean(param1))
                              {
                                 this.finalCall();
                              }
                           }
                           return;
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr0110);
            }
            §§goto(addr00e9);
         }
         §§goto(addr00d7);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§pop().finishConstruction.removeEventListener(MouseEvent.CLICK,this.onFinishConstruction);
               if(!(_loc3_ && _loc3_))
               {
                  addr005c:
                  this.component.removeEventListener(Event.CLOSE,this.finalCall);
                  addr004e:
                  if(!(_loc3_ && _loc2_))
                  {
                     this.clearTimerCostInterval();
                     if(_loc2_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                     }
                  }
               }
               return;
            }
            §§goto(addr005c);
         }
         §§goto(addr004e);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            RandomUtilities.removestackCall(this.updateLayerData);
            if(_loc2_)
            {
               this.component.finishConstruction.removeEventListener(MouseEvent.CLICK,this.onFinishConstruction);
               if(_loc2_ || Boolean(this))
               {
                  super.onRemove();
                  if(!_loc1_)
                  {
                     addr006b:
                     facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
                  }
                  §§goto(addr0076);
               }
            }
            §§goto(addr006b);
         }
         addr0076:
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(param1 is BillboardObject)
            {
               if(_loc2_)
               {
                  this._billboardObject = BillboardObject(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006e:
                        this._layerData.realCurrencyCosts = this.formulaProxy.getInstantFinishCostForMysteryBuilding(this._billboardObject.billboardObjectVo.activePhases);
                        if(_loc2_ || _loc2_)
                        {
                           this.setLayerData();
                           if(_loc2_)
                           {
                              addr00a8:
                              this.setListener();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr00bb);
                              }
                           }
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr006e);
               }
               addr00bb:
               this.startTimerCostInterval();
               if(!_loc3_)
               {
                  addr00c6:
                  facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
               }
               §§goto(addr00d1);
            }
            addr00d1:
            return;
         }
         §§goto(addr006e);
      }
      
      public function get component() : MysteryConstructionMiniLayer
      {
         return super.viewComponent as MysteryConstructionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00f4:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr00df:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr00f4);
                              }
                              else
                              {
                                 addr0109:
                                 §§push(2);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr0128);
                           }
                           else
                           {
                              §§goto(addr0105);
                           }
                        }
                        addr0105:
                        §§goto(addr0104);
                     }
                     addr0104:
                     if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
                     {
                        §§goto(addr0109);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0128);
                  }
                  addr0128:
                  switch(§§pop())
                  {
                     case 0:
                        this._waitingForPhaseUpdate = false;
                        if(_loc3_)
                        {
                           RandomUtilities.addstackCall(this.updateLayerData);
                           if(_loc3_)
                           {
                              break;
                           }
                           addr004d:
                           RandomUtilities.addstackCall(this.updateLayerData);
                           if(_loc4_ && Boolean(param1))
                           {
                           }
                        }
                        break;
                     case 1:
                     case 2:
                        if(this._waitingForPhaseUpdate)
                        {
                           break;
                        }
                        if(!(_loc3_ || Boolean(param1)))
                        {
                           break;
                        }
                        §§goto(addr004d);
                  }
                  return;
               }
               §§goto(addr00df);
            }
            §§goto(addr0104);
         }
         §§goto(addr00f4);
      }
      
      private function updateLayerData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
            if(_loc2_)
            {
               §§push(this._billboardObject.billboardObjectVo.isReadyForNextConstructionStep());
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.finalCall();
                        if(!_loc1_)
                        {
                           §§goto(addr005d);
                        }
                        else
                        {
                           addr006b:
                           §§push(this._layerData);
                           if(_loc2_)
                           {
                              addr0081:
                              if(§§pop().hasStarted)
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(this._layerData);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().constructionStepEndTime);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() - this._layerData.constructionCurrentTime);
                                          if(!_loc1_)
                                          {
                                             §§push(0);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      this.finalCall();
                                                      if(_loc2_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0100:
                                                      this.finalCall();
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.setLayerData();
                                                   if(_loc2_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr00f7:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr0100);
                                                   }
                                                }
                                                else
                                                {
                                                   this.setLayerData();
                                                }
                                             }
                                             §§goto(addr011b);
                                          }
                                          else
                                          {
                                             addr00f5:
                                             §§push(0);
                                          }
                                          §§goto(addr00f7);
                                       }
                                    }
                                    else
                                    {
                                       addr00f2:
                                       §§push(§§pop().constructionStepLength);
                                    }
                                    §§goto(addr00f5);
                                 }
                                 addr011b:
                                 return;
                              }
                              §§push(this._layerData);
                           }
                           §§goto(addr00f2);
                        }
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0081);
            }
            addr005d:
            return;
         }
         §§goto(addr006b);
      }
      
      private function get formulaProxy() : FormulaProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._formulaProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
                  }
               }
               addr0055:
               return this._formulaProxy;
            }
         }
         §§goto(addr0055);
      }
      
      private function startTimerCostInterval() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(!this._intervalRunning)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this._intervalRunning = true;
                  if(_loc1_)
                  {
                     addr0050:
                     this._intervalId = setInterval(this.setTimerCost,1000);
                     if(_loc2_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0050);
            }
            else
            {
               this.clearTimerCostInterval();
            }
         }
         addr007b:
      }
      
      private function clearTimerCostInterval() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._intervalRunning)
            {
               if(!(_loc2_ && _loc1_))
               {
                  clearInterval(this._intervalId);
                  if(!_loc2_)
                  {
                     addr0045:
                     this._intervalRunning = false;
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function setTimerCost() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._layerData);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
                     if(!_loc2_)
                     {
                        addr0055:
                        this._layerData.realCurrencyCosts = this.formulaProxy.getInstantFinishCostForMysteryBuilding(this._billboardObject.billboardObjectVo.activePhases);
                        addr0051:
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0077:
                           this.setLayerData();
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0051);
            }
            §§goto(addr0055);
         }
         addr007c:
      }
   }
}

