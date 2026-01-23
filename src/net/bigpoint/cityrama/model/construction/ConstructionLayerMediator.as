package net.bigpoint.cityrama.model.construction
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.constructionLayer.ConstructionLayer;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConstructionLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const START_STEP_NORMAL:String = "START_STEP_NORMAL";
      
      public static const INSTANT_FINISH_STEP:String = "INSTANT_FINISH_STEP";
      
      public static const INSTANT_FINISH_ALL:String = "INSTANT_FINISH_ALL";
      
      public static const NAME:String = "ConstructionlayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || ConstructionLayerMediator)
      {
         START_STEP_NORMAL = "START_STEP_NORMAL";
         if(_loc2_)
         {
            INSTANT_FINISH_STEP = "INSTANT_FINISH_STEP";
            if(_loc2_)
            {
               INSTANT_FINISH_ALL = "INSTANT_FINISH_ALL";
               if(_loc2_ || ConstructionLayerMediator)
               {
                  addr005a:
                  NAME = "ConstructionlayerMediator";
               }
               §§goto(addr0062);
            }
         }
         §§goto(addr005a);
      }
      addr0062:
      
      private var _data:ConstructionLayerVo;
      
      private var _waitingForUpdate:Boolean;
      
      private var _soundProxy:SoundProxy;
      
      public function ConstructionLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
            if(_loc3_ || Boolean(param1))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0106:
                        §§push(2);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || Boolean(this))
                        {
                           addr00b2:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0106);
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
                              if(_loc3_ || _loc3_)
                              {
                                 addr00e1:
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    addr00e7:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr0106);
                                       }
                                       else
                                       {
                                          addr0123:
                                          §§push(3);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                       §§goto(addr013b);
                                    }
                                    else
                                    {
                                       §§goto(addr011f);
                                    }
                                 }
                                 addr011f:
                                 §§goto(addr011e);
                              }
                              addr011e:
                              if(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED === _loc2_)
                              {
                                 §§goto(addr0123);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr013b);
                           }
                           §§goto(addr013b);
                        }
                        §§goto(addr00e7);
                     }
                     §§goto(addr00e1);
                  }
                  addr013b:
                  switch(§§pop())
                  {
                     case 0:
                        this.updateData();
                        if(_loc3_)
                        {
                        }
                        break;
                     case 1:
                     case 2:
                     case 3:
                        this.updateResources();
                        if(_loc3_ || Boolean(param1))
                        {
                        }
                  }
                  return;
               }
               §§goto(addr00b2);
            }
            §§goto(addr00e1);
         }
         §§goto(addr0106);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1 is ConstructionLayerVo)
            {
               if(_loc3_ || _loc3_)
               {
                  this._data = param1 as ConstructionLayerVo;
                  if(!_loc2_)
                  {
                     addr0050:
                     this.component.data = this._data;
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function updateData() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ConstructionLayerDataProxy = null;
         if(!_loc2_)
         {
            if(this._data)
            {
               _loc1_ = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
               addr0025:
               if(_loc3_ || _loc3_)
               {
                  this.setData(_loc1_.CreateConstructionLayerVo(this._data.billboardObject,this._data.isUpgrade));
                  if(_loc3_)
                  {
                     addr007a:
                     this._waitingForUpdate = false;
                  }
                  §§goto(addr007f);
               }
               §§goto(addr007a);
            }
            addr007f:
            return;
         }
         §§goto(addr0025);
      }
      
      private function updateResources() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ConstructionLayerDataProxy = null;
         if(_loc2_ || _loc3_)
         {
            if(!this._waitingForUpdate)
            {
               _loc1_ = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
               addr0039:
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.UpdateConstructionLayerVoResources(this._data);
                  if(_loc2_ || Boolean(this))
                  {
                     this.component.updateData();
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function get component() : ConstructionLayer
      {
         return this.viewComponent as ConstructionLayer;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc1_)
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(START_STEP_NORMAL);
                     if(_loc1_ || _loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.startStepNormal);
                        if(!_loc2_)
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00a2);
            }
            addr006d:
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§push(INSTANT_FINISH_STEP);
               if(_loc1_ || _loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.instantFinishStep);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a2:
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§goto(addr00b8);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00e1);
               }
               addr00b8:
               §§pop().addEventListener(INSTANT_FINISH_ALL,this.instantFinishAll);
               §§goto(addr00ab);
            }
            addr00ab:
            if(!(_loc2_ && Boolean(this)))
            {
               addr00d0:
               this.component.addEventListener(Event.CLOSE,this.finalCall);
               addr00cc:
               if(_loc1_)
               {
                  addr00e1:
                  facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
               }
            }
            return;
         }
         §§goto(addr00e1);
      }
      
      private function startStepNormal(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopImmediatePropagation();
            if(_loc2_)
            {
               param1.stopPropagation();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this._soundProxy);
                  if(_loc2_)
                  {
                     §§pop().playButtonClick();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr004d:
                        §§push(this._data);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(§§pop().isUpgrade);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr009b:
                                          §§pop();
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(this._data);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().constructionSteps.length > 0);
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   var _temp_11:* = §§pop();
                                                   addr00d4:
                                                   §§push(_temp_11);
                                                   if(_temp_11)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr00e5:
                                                         §§pop();
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr010b:
                                                            addr00f7:
                                                            if(this._data.constructionSteps[0].state == ConstructionLayerStepVo.STATE_DONE)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr0114:
                                                                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
                                                                     "boost":false,
                                                                     "vo":this._data.billboardObject.billboardObjectVo
                                                                  });
                                                                  if(_loc2_ || Boolean(param1))
                                                                  {
                                                                     addr0172:
                                                                     this._soundProxy.playConstruction();
                                                                     addr016e:
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        addr0183:
                                                                        this._waitingForUpdate = true;
                                                                     }
                                                                     §§goto(addr0188);
                                                                  }
                                                                  §§goto(addr0183);
                                                               }
                                                               §§goto(addr0188);
                                                            }
                                                            else
                                                            {
                                                               sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._data.billboardObject.billboardObjectVo);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§goto(addr016e);
                                                               }
                                                            }
                                                            §§goto(addr0183);
                                                         }
                                                         §§goto(addr0114);
                                                      }
                                                   }
                                                }
                                                §§goto(addr010b);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr0183);
                                       }
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr010b);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr0188);
                  }
                  §§goto(addr0172);
               }
               §§goto(addr016e);
            }
            addr0188:
            return;
         }
         §§goto(addr004d);
      }
      
      private function instantFinishStep(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:ConstructionLayerStepVo = null;
         var _loc4_:TimerProxy = null;
         var _loc5_:int = 0;
         var _loc6_:PlayerResourceProxy = null;
         var _loc2_:* = -1;
         var _loc7_:int = 0;
         var _loc8_:* = this._data.constructionSteps;
         while(true)
         {
            for each(_loc3_ in _loc8_)
            {
               if(_loc10_ || Boolean(this))
               {
                  §§push(_loc3_.state);
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     §§push(ConstructionLayerStepVo.STATE_RUNNING);
                     if(!_loc9_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc10_ || Boolean(param1))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(!_temp_5)
                           {
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 addr0098:
                                 §§pop();
                                 if(_loc10_)
                                 {
                                    addr00aa:
                                    addr00a9:
                                    addr00a3:
                                    if(_loc3_.state != ConstructionLayerStepVo.STATE_AVAILABLE)
                                    {
                                       continue;
                                    }
                                 }
                                 addr00ae:
                                 _loc4_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                                 if(_loc10_ || Boolean(param1))
                                 {
                                    _loc3_.currentTime = _loc4_.currentTimeStamp;
                                    if(_loc10_ || Boolean(_loc3_))
                                    {
                                       addr00e6:
                                       _loc5_ = _loc3_.instantFinishCost;
                                    }
                                    _loc6_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                                    §§push(_loc6_.realCurrency);
                                    if(_loc10_)
                                    {
                                       if(§§pop() < _loc5_)
                                       {
                                          if(_loc10_ || Boolean(this))
                                          {
                                             facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                                             if(!(_loc9_ && Boolean(_loc3_)))
                                             {
                                                return;
                                             }
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc3_.state);
                                          if(_loc10_)
                                          {
                                             §§push(ConstructionLayerStepVo.STATE_RUNNING);
                                             if(_loc10_ || Boolean(param1))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc9_ && Boolean(_loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc3_.phaseID);
                                                   if(_loc10_ || Boolean(param1))
                                                   {
                                                      addr0190:
                                                      §§push(§§pop());
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc9_ && Boolean(_loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   this._waitingForUpdate = true;
                                                   if(_loc10_ || Boolean(_loc3_))
                                                   {
                                                      facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,{
                                                         "buildingId":this._data.billboardObject.billboardObjectVo.buildingDTO.id,
                                                         "phaseId":_loc2_,
                                                         "boost":true
                                                      });
                                                      if(_loc10_ || Boolean(_loc3_))
                                                      {
                                                         return;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   addr0200:
                                                   addr01fa:
                                                   if(_loc3_.state != ConstructionLayerStepVo.STATE_AVAILABLE)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                addr020a:
                                                this._waitingForUpdate = true;
                                                if(!_loc9_)
                                                {
                                                   facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
                                                      "boost":true,
                                                      "vo":this._data.billboardObject.billboardObjectVo
                                                   });
                                                   if(!(_loc9_ && Boolean(this)))
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr0200);
                                          }
                                          §§goto(addr01fa);
                                       }
                                       §§goto(addr020a);
                                    }
                                    §§goto(addr0190);
                                 }
                                 §§goto(addr00e6);
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00ae);
            }
            return;
         }
      }
      
      private function instantFinishAll(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:ConstructionLayerStepVo = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc2_:* = -1;
         var _loc4_:* = 0;
         var _loc5_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc8_:int = 0;
         var _loc9_:* = this._data.constructionSteps;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(_loc10_)
            {
               break;
            }
            if(!§§pop())
            {
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  if(_loc11_)
                  {
                     _loc8_ = 0;
                  }
                  _loc9_ = this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.constructionPhases;
                  while(true)
                  {
                     §§push(§§hasnext(_loc9_,_loc8_));
                     break loop0;
                  }
                  addr01ce:
               }
               addr01d5:
               if(!(_loc10_ && Boolean(param1)))
               {
                  if(!_loc10_)
                  {
                     §§push(_loc2_ == -1);
                     if(!_loc10_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!(_loc10_ && Boolean(_loc2_)))
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§pop();
                                 if(!(_loc10_ && Boolean(param1)))
                                 {
                                    §§push(this._data);
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop().isUpgrade);
                                       if(_loc11_)
                                       {
                                          addr0250:
                                          §§push(§§pop());
                                          if(_loc11_ || Boolean(this))
                                          {
                                             addr025f:
                                             var _temp_10:* = §§pop();
                                             addr0260:
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr026a:
                                                   §§pop();
                                                   if(!_loc10_)
                                                   {
                                                      addr027c:
                                                      addr0275:
                                                      if(this._data.billboardObject is TownHallFieldObject)
                                                      {
                                                         addr0284:
                                                         for each(_loc6_ in this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.activePhases)
                                                         {
                                                            if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
                                                            {
                                                               if(_loc11_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(_loc6_.phaseId);
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc2_ = §§pop();
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         addr0280:
                                                      }
                                                      var _loc7_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                                                      §§push(_loc7_.realCurrency);
                                                      if(_loc11_ || Boolean(_loc2_))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc10_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc11_ || Boolean(this))
                                                               {
                                                                  facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0350:
                                                                  §§push(_loc4_ > 0);
                                                                  if(_loc11_ || Boolean(this))
                                                                  {
                                                                     var _temp_19:* = §§pop();
                                                                     §§push(_temp_19);
                                                                     §§push(_temp_19);
                                                                     if(!(_loc10_ && Boolean(_loc2_)))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§goto(addr037c);
                                                                           }
                                                                           §§goto(addr03d9);
                                                                        }
                                                                        §§goto(addr03a4);
                                                                     }
                                                                     §§goto(addr03ef);
                                                                  }
                                                                  addr037c:
                                                                  §§pop();
                                                                  if(_loc11_ || Boolean(param1))
                                                                  {
                                                                     addr038e:
                                                                     addr038c:
                                                                     §§push(_loc2_ == -1);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc11_ || Boolean(_loc3_))
                                                                        {
                                                                           addr03a4:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc11_ || Boolean(param1))
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(_loc11_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop().isUpgrade);
                                                                                    if(!(_loc10_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       addr03d9:
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc10_ && Boolean(this)))
                                                                                       {
                                                                                          addr03e8:
                                                                                          var _temp_27:* = §§pop();
                                                                                          §§push(_temp_27);
                                                                                          §§push(_temp_27);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr03ef:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr03f9:
                                                                                                   §§pop();
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(this._data);
                                                                                                      if(_loc11_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0412:
                                                                                                         §§push(§§pop().constructionSteps.length > 0);
                                                                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            addr0428:
                                                                                                            var _temp_30:* = §§pop();
                                                                                                            addr0429:
                                                                                                            §§push(_temp_30);
                                                                                                            if(_temp_30)
                                                                                                            {
                                                                                                               if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr043b:
                                                                                                                  §§pop();
                                                                                                                  if(_loc11_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     §§goto(addr0462);
                                                                                                                  }
                                                                                                                  §§goto(addr04c3);
                                                                                                               }
                                                                                                            }
                                                                                                            addr0462:
                                                                                                            §§goto(addr044e);
                                                                                                         }
                                                                                                         §§goto(addr043b);
                                                                                                      }
                                                                                                      addr044e:
                                                                                                      §§goto(addr044a);
                                                                                                   }
                                                                                                   §§goto(addr046c);
                                                                                                }
                                                                                                §§goto(addr0428);
                                                                                             }
                                                                                             §§goto(addr0462);
                                                                                          }
                                                                                          §§goto(addr0429);
                                                                                       }
                                                                                       §§goto(addr03f9);
                                                                                    }
                                                                                    §§goto(addr03e8);
                                                                                 }
                                                                                 §§goto(addr0412);
                                                                              }
                                                                           }
                                                                           §§goto(addr04c3);
                                                                        }
                                                                        §§goto(addr0428);
                                                                     }
                                                                     §§goto(addr043b);
                                                                  }
                                                                  addr044a:
                                                                  if(this._data.constructionSteps[0].state == ConstructionLayerStepVo.STATE_DONE)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_INSTANTFINISH,{
                                                                           "buildingId":this._data.billboardObject.billboardObjectVo.buildingDTO.id,
                                                                           "configId":_loc2_
                                                                        });
                                                                        addr046c:
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr04c3:
                                                                     this.finalCall();
                                                                  }
                                                                  else
                                                                  {
                                                                     sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.billboardObject.billboardObjectVo.buildingDTO.id);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr04c3);
                                                                     }
                                                                  }
                                                                  §§goto(addr04c8);
                                                               }
                                                               addr04c8:
                                                               return;
                                                            }
                                                            §§goto(addr0350);
                                                         }
                                                         §§goto(addr038e);
                                                      }
                                                      §§goto(addr038c);
                                                   }
                                                   §§goto(addr0280);
                                                }
                                             }
                                             §§goto(addr027c);
                                          }
                                          §§goto(addr026a);
                                       }
                                       §§goto(addr025f);
                                    }
                                    §§goto(addr0275);
                                 }
                                 §§goto(addr0280);
                              }
                              §§goto(addr0250);
                           }
                           §§goto(addr025f);
                        }
                        §§goto(addr0260);
                     }
                     §§goto(addr026a);
                  }
                  §§goto(addr0280);
               }
               §§goto(addr0284);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc8_,_loc9_);
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  §§push(_loc3_.state);
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     §§push(ConstructionLayerStepVo.STATE_AVAILABLE);
                     if(_loc11_ || Boolean(_loc3_))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           var _temp_37:* = §§pop();
                           §§push(_temp_37);
                           §§push(_temp_37);
                           if(!_loc10_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc10_ && Boolean(param1)))
                                 {
                                    §§pop();
                                    if(!_loc10_)
                                    {
                                       §§push(_loc3_.state);
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          addr00ce:
                                          §§push(ConstructionLayerStepVo.STATE_RUNNING);
                                          if(!(_loc10_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                addr00f1:
                                                var _temp_42:* = §§pop();
                                                addr00f2:
                                                §§push(_temp_42);
                                                if(!_temp_42)
                                                {
                                                   if(!(_loc10_ && Boolean(param1)))
                                                   {
                                                      addr0104:
                                                      §§pop();
                                                      if(!(_loc10_ && Boolean(this)))
                                                      {
                                                         addr011e:
                                                         addr011d:
                                                         addr0117:
                                                         if(_loc3_.state == ConstructionLayerStepVo.STATE_UNAVAILABLE)
                                                         {
                                                            if(_loc11_ || Boolean(param1))
                                                            {
                                                               addr0130:
                                                               _loc3_.currentTime = _loc5_.currentTimeStamp;
                                                               if(!(_loc11_ || Boolean(_loc3_)))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            addr0147:
                                                            §§push(_loc4_);
                                                            if(_loc11_ || Boolean(param1))
                                                            {
                                                               §§push(int(§§pop() + _loc3_.instantFinishCost));
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr0130);
                                                   }
                                                }
                                             }
                                             §§goto(addr011e);
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr0117);
                                    }
                                    §§goto(addr0147);
                                 }
                              }
                              §§goto(addr00f1);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0130);
            }
         }
         while(§§pop())
         {
            _loc6_ = §§nextvalue(_loc8_,_loc9_);
            if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION)
            {
               if(_loc11_)
               {
                  §§push(_loc6_.phaseId);
                  if(_loc11_)
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
               }
               break;
            }
            §§goto(addr01ce);
         }
         §§goto(addr01d5);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.onRemove();
            if(_loc2_)
            {
               §§push(this.component);
               if(_loc2_ || _loc1_)
               {
                  §§pop().removeEventListener(Event.CLOSE,this.finalCall);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.component);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(START_STEP_NORMAL);
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop().removeEventListener(§§pop(),this.startStepNormal);
                           if(_loc2_)
                           {
                              §§push(this.component);
                              if(_loc2_)
                              {
                                 addr008a:
                                 §§push(INSTANT_FINISH_STEP);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr00a4:
                                    §§pop().removeEventListener(§§pop(),this.instantFinishStep);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 addr00bf:
                                 this.component.removeEventListener(INSTANT_FINISH_ALL,this.instantFinishAll);
                                 §§goto(addr00bc);
                              }
                              addr00bc:
                              addr00b8:
                              if(!_loc1_)
                              {
                                 addr00cb:
                                 facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
                              }
                           }
                           §§goto(addr00d6);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr008a);
                  }
                  addr00d6:
                  return;
               }
               §§goto(addr00bc);
            }
            §§goto(addr00b8);
         }
         §§goto(addr00cb);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
   }
}

