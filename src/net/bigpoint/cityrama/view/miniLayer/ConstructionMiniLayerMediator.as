package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConstructionMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConstructionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ConstructionMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ConstructionMiniLayerMediator";
      }
      
      private var _miniLayerProxy:MiniLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObject:BillboardObject;
      
      private var _layerData:ConstructionMiniLayerVo;
      
      private var _configProxy:GameConfigProxy;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function ConstructionMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               this._miniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
               addr0036:
               if(_loc3_)
               {
                  this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  if(_loc3_)
                  {
                     addr006f:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
                  §§goto(addr0080);
               }
               §§goto(addr006f);
            }
            addr0080:
            return;
         }
         §§goto(addr0036);
      }
      
      private function setLayerData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(this._layerData)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.component.setData(this._layerData);
               }
            }
         }
      }
      
      private function setListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().startConstruction.addEventListener(MouseEvent.CLICK,this.onStartConstruction);
               if(!_loc1_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§push(§§pop().ddButton);
                     if(_loc2_)
                     {
                        §§pop().addEventListener(MouseEvent.CLICK,this.onDDClicked);
                        if(!_loc1_)
                        {
                           §§push(this.component);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr0075:
                              §§push(§§pop().ddButton);
                              if(_loc2_)
                              {
                                 §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
                                 if(!_loc1_)
                                 {
                                    §§goto(addr008e);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr008e);
            }
            §§goto(addr0075);
         }
         addr008e:
         §§push(this.component);
         if(_loc2_)
         {
            §§pop().ddButton.addEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
            addr0099:
            addr0096:
            if(_loc2_)
            {
               addr00b4:
               §§push(this.component);
               if(!_loc1_)
               {
                  §§goto(addr00bc);
               }
               §§goto(addr00d2);
            }
            §§goto(addr00cf);
         }
         addr00bc:
         §§pop().addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleTimeUp);
         if(_loc2_)
         {
            addr00d2:
            this.component.addEventListener(Event.CLOSE,this.finalCall);
            addr00cf:
         }
      }
      
      private function onInstantMouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(param1)))
            {
               if(§§pop().ddButton.enabled)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0061:
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        addr0069:
                        §§pop().instantDDText.visible = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr007f:
                           this.component.startConstruction.visible = true;
                           addr007c:
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr007c);
               }
               addr0085:
               return;
            }
            §§goto(addr0069);
         }
         §§goto(addr0061);
      }
      
      private function onInstantMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.component);
            if(!_loc3_)
            {
               if(§§pop().ddButton.enabled)
               {
                  if(_loc2_)
                  {
                     addr0038:
                     §§push(this.component);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop().startConstruction.visible = false;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006b:
                           this.component.instantDDText.visible = true;
                           addr0068:
                        }
                        §§goto(addr0071);
                     }
                     §§goto(addr006b);
                  }
                  §§goto(addr0068);
               }
               addr0071:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0038);
      }
      
      private function handleTimeUp(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(_loc2_ || Boolean(param1))
            {
               addr0032:
               this.finalCall();
            }
            return;
         }
         §§goto(addr0032);
      }
      
      private function onStartConstruction(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this._soundProxy);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().playButtonClick();
               if(_loc4_)
               {
                  addr003a:
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
                     "boost":false,
                     "vo":this._billboardObject.billboardObjectVo
                  });
                  if(_loc4_)
                  {
                     addr005e:
                     this._soundProxy.playConstruction();
                     addr005a:
                  }
                  var _loc2_:ConfigPhaseDTO = this._billboardObject.billboardObjectVo.informationFloaterPhase;
                  if(!_loc3_)
                  {
                     this._billboardObject.invalidateInformationFloaterManager();
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        if(OptionsGlobalVariables.getInstance().showDropIcons)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc2_ != null)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00cc:
                                    facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                       "tO":this._billboardObject,
                                       "cP":_loc2_
                                    });
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00f0:
                                       this.finalCall();
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr00f0);
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr005a);
            }
            §§goto(addr005e);
         }
         §§goto(addr003a);
      }
      
      private function onDDClicked(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(this.component.ddButton.showPlus)
            {
               if(_loc3_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                  if(!(_loc3_ || Boolean(param1)))
                  {
                     addr007c:
                     this._soundProxy.playConstruction();
                     if(_loc3_)
                     {
                        sendNotification(ApplicationNotificationConstants.INSTANT_FINISH_CONSTRUCTION_REQUEST,this._billboardObject.billboardObjectVo);
                        if(_loc3_)
                        {
                           addr009f:
                           this.finalCall();
                        }
                     }
                  }
               }
            }
            else
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(!_loc2_)
               {
                  §§goto(addr007c);
               }
            }
            return;
         }
         §§goto(addr009f);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(MouseEvent.CLICK,this.onStartConstruction);
               if(!_loc2_)
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§push(§§pop().ddButton);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().removeEventListener(MouseEvent.CLICK,this.onDDClicked);
                        if(!_loc2_)
                        {
                           §§push(this.component);
                           if(_loc3_)
                           {
                              §§push(§§pop().ddButton);
                              if(!_loc2_)
                              {
                                 §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
                                 if(_loc3_)
                                 {
                                    addr0088:
                                    §§push(this.component);
                                    if(_loc3_)
                                    {
                                       addr0093:
                                       §§pop().ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
                                       addr0090:
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr00ba);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0093);
                  }
                  addr00ba:
                  this.component.removeEventListener(Event.CLOSE,this.finalCall);
                  addr00b7:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00d3:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
                  §§goto(addr00e1);
               }
               addr00e1:
               return;
            }
            §§goto(addr0090);
         }
         §§goto(addr00b7);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            RandomUtilities.removestackCall(this.updateLayerData);
            if(!_loc1_)
            {
               §§push(this.component);
               if(_loc2_ || _loc2_)
               {
                  §§pop().removeEventListener(MouseEvent.CLICK,this.onStartConstruction);
                  if(_loc2_)
                  {
                     §§push(this.component);
                     if(_loc2_)
                     {
                        §§push(§§pop().ddButton);
                        if(_loc2_)
                        {
                           §§pop().removeEventListener(MouseEvent.CLICK,this.onDDClicked);
                           if(_loc2_)
                           {
                              §§push(this.component);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr0082:
                                 §§push(§§pop().ddButton);
                                 if(!_loc1_)
                                 {
                                    §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
                                    §§goto(addr008a);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr00bc);
                        }
                        addr008a:
                        if(!_loc1_)
                        {
                           addr00ab:
                           this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
                           addr00a8:
                           if(_loc2_)
                           {
                              addr00bc:
                              super.onRemove();
                              if(_loc2_)
                              {
                                 addr00c6:
                                 facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00a8);
                  }
                  addr00d1:
                  return;
               }
               §§goto(addr0082);
            }
         }
         §§goto(addr00bc);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(param1 is BillboardObject)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr003e:
                  this._billboardObject = BillboardObject(param1);
                  if(_loc2_ || Boolean(param1))
                  {
                     this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
                     addr0055:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr007c:
                        this.setLayerData();
                        if(_loc2_)
                        {
                           this.setListener();
                           if(_loc2_)
                           {
                              addr0091:
                              facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
                           }
                           §§goto(addr009c);
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr009c:
            return;
         }
         §§goto(addr003e);
      }
      
      public function get component() : ConstructionMiniLayer
      {
         return super.viewComponent as ConstructionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(_loc4_)
         {
            §§push(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
            if(_loc4_ || Boolean(this))
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr0147:
                        §§push(3);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr015f);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           addr00e8:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0147);
                              }
                              §§goto(addr015f);
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED);
                              if(_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    addr010d:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(2);
                                          if(_loc4_ || _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr015f);
                                    }
                                    else
                                    {
                                       §§goto(addr0143);
                                    }
                                 }
                                 addr0143:
                              }
                              §§goto(addr0142);
                           }
                        }
                        §§goto(addr010d);
                     }
                     §§goto(addr0142);
                  }
               }
               §§goto(addr00e8);
            }
            addr0142:
            if(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED === _loc2_)
            {
               §§goto(addr0147);
            }
            else
            {
               §§push(4);
            }
            addr015f:
            switch(§§pop())
            {
               case 0:
                  this._waitingForPhaseUpdate = false;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     RandomUtilities.addstackCall(this.updateLayerData);
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  break;
               case 1:
               case 2:
               case 3:
                  if(!this._waitingForPhaseUpdate)
                  {
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        RandomUtilities.addstackCall(this.updateLayerData);
                        if(_loc3_)
                        {
                        }
                     }
                  }
            }
            return;
         }
         §§goto(addr0147);
      }
      
      private function updateLayerData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
            if(!(_loc2_ && Boolean(this)))
            {
               addr003a:
               §§push(this._layerData);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop().hasStarted)
                  {
                     if(!_loc2_)
                     {
                        §§push(this._layerData);
                        if(_loc1_)
                        {
                           addr006a:
                           §§push(§§pop().constructionStepEndTime);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(§§pop() - this._layerData.constructionCurrentTime);
                              if(!_loc2_)
                              {
                                 §§push(0);
                                 if(_loc1_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(_loc1_)
                                       {
                                          addr0097:
                                          this.finalCall();
                                          if(_loc1_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.setLayerData();
                                       if(_loc2_ && Boolean(this))
                                       {
                                          addr00df:
                                          this.finalCall();
                                          if(_loc1_)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00ce:
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§goto(addr00df);
                                       }
                                    }
                                    else
                                    {
                                       this.setLayerData();
                                    }
                                 }
                                 §§goto(addr00f2);
                              }
                              else
                              {
                                 addr00cc:
                                 §§push(0);
                              }
                              §§goto(addr00ce);
                           }
                        }
                        else
                        {
                           addr00c9:
                           §§push(§§pop().constructionStepLength);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr0097);
                  }
                  else
                  {
                     §§push(this._layerData);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr006a);
            }
            addr00f2:
            return;
         }
         §§goto(addr003a);
      }
   }
}

