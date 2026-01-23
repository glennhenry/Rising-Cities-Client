package net.bigpoint.cityrama.model.assistants
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.assistants.vo.AssistVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityAssistProxy extends Proxy
   {
      
      public static const NAME:String = "CityAssistProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "CityAssistProxy";
      }
      
      private var _cityProxy:CityProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _ownedAssists:Vector.<AssistVo>;
      
      private var _initialized:Boolean = false;
      
      private var _rentCollectorActiveOnRebuild:AssistVo;
      
      public function CityAssistProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      private static function isAssistPaymentPack(param1:ConfigPaymentPackDTO) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1.type);
            if(!(_loc2_ && _loc2_))
            {
               §§push(ServerPaymentPackConst.INTERNAL);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§goto(addr0067);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr0168);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr0141);
               }
               addr0067:
               §§goto(addr0061);
            }
            addr0061:
            §§push(param1.type == ServerPaymentPackConst.EXTERNAL);
            if(_loc3_ || _loc3_)
            {
               addr0075:
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(param1.assists.length > 0)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr009f:
                           §§push(param1.goods.length == 0);
                           if(!(_loc2_ && CityAssistProxy))
                           {
                              var _temp_10:* = §§pop();
                              §§push(_temp_10);
                              §§push(_temp_10);
                              if(_loc3_)
                              {
                                 addr00c7:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§pop();
                                       if(!(_loc2_ && Boolean(param1)))
                                       {
                                          §§push(param1.resources.length == 0);
                                          if(!_loc2_)
                                          {
                                             addr00f4:
                                             var _temp_13:* = §§pop();
                                             §§push(_temp_13);
                                             §§push(_temp_13);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr0102:
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§push(param1.improvements.length == 0);
                                                         if(!(_loc2_ && Boolean(param1)))
                                                         {
                                                            addr012f:
                                                            var _temp_17:* = §§pop();
                                                            addr0130:
                                                            §§push(_temp_17);
                                                            if(_temp_17)
                                                            {
                                                               if(_loc3_ || Boolean(param1))
                                                               {
                                                                  addr0141:
                                                                  §§pop();
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§goto(addr014f);
                                                                  }
                                                                  §§goto(addr0188);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0168);
                                                      }
                                                      §§goto(addr014f);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr012f);
                                             }
                                             §§goto(addr0130);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0188);
                                    }
                                    §§goto(addr0187);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr00f4);
                        }
                        addr014f:
                        §§push(param1.permissions.length == 0);
                        if(!_loc2_)
                        {
                           addr0168:
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(true);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    addr0187:
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr0188:
                                 §§push(false);
                              }
                              §§goto(addr0189);
                           }
                           §§goto(addr0188);
                        }
                        §§goto(addr0189);
                     }
                     §§goto(addr0188);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0188);
            }
            addr0189:
            return §§pop();
         }
         §§goto(addr014f);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            facade.registerProxy(new AssistViewProxy(AssistViewProxy.NAME));
            if(!_loc1_)
            {
               this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
               if(_loc2_)
               {
                  this._cityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
                  if(_loc2_)
                  {
                     addr007a:
                     this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME)) as TimerProxy;
                     if(_loc2_)
                     {
                        addr0099:
                        this._ownedAssists = new Vector.<AssistVo>();
                     }
                  }
               }
               return;
            }
            §§goto(addr007a);
         }
         §§goto(addr0099);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(_loc2_ || _loc2_)
            {
               facade.removeProxy(AssistViewProxy.NAME);
            }
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._cityProxy.city.phases)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               this._ownedAssists.push(this.createAssistVo(_loc1_));
            }
         }
         if(!(_loc5_ && Boolean(this)))
         {
            this._initialized = true;
            if(_loc4_ || Boolean(_loc2_))
            {
               sendNotification(ApplicationNotificationConstants.ASSIST_DATA_CHANGE);
               if(_loc4_ || Boolean(this))
               {
                  this.checkRentCollectorActivation();
               }
            }
         }
      }
      
      private function checkRentCollectorActivation() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:AssistVo = null;
         if(_loc3_)
         {
            if(this._rentCollectorActiveOnRebuild)
            {
               if(_loc3_)
               {
                  §§push(this.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL));
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_ = this.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(Boolean(_loc1_));
                              if(_loc3_)
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 if(_temp_5)
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§goto(addr00a7);
                                       }
                                       §§goto(addr00b8);
                                    }
                                 }
                              }
                              addr00a7:
                              §§goto(addr009b);
                           }
                           addr009b:
                           if(this._rentCollectorActiveOnRebuild.endTime < _loc1_.endTime)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_ACTIVATED_LAYER);
                                 addr00b8:
                              }
                           }
                           addr00d1:
                           this._rentCollectorActiveOnRebuild = null;
                           if(_loc2_ && Boolean(this))
                           {
                              addr00fb:
                              sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_ACTIVATED_LAYER);
                           }
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr00d1);
                  }
                  else
                  {
                     addr00f2:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr00fb);
                        }
                     }
                  }
               }
               addr0106:
               return;
            }
            §§push(this.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL));
            §§goto(addr00f2);
         }
         §§goto(addr00fb);
      }
      
      private function createAssistVo(param1:PhaseDTO) : AssistVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:AssistVo = new AssistVo();
         if(_loc3_ || _loc3_)
         {
            _loc2_.endTime = param1.expirationTime;
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.initTime = param1.initTime;
               addr004d:
               if(!_loc4_)
               {
                  _loc2_.configId = param1.phaseId;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     _loc2_.config = this.getAssistConfigByPhaseId(param1.phaseId);
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr004d);
      }
      
      private function getAssistConfigByPhaseId(param1:Number) : ConfigAssistDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigAssistDTO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this._configProxy.config.assists)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               if(_loc2_.connectedPhaseId == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function rebuild() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._rentCollectorActiveOnRebuild = this.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
            if(_loc1_ || Boolean(this))
            {
               addr003b:
               if(!this._ownedAssists)
               {
                  if(_loc1_)
                  {
                     this._ownedAssists = new Vector.<AssistVo>();
                     if(_loc1_)
                     {
                        addr0065:
                        this._initialized = false;
                        if(!_loc2_)
                        {
                           this._ownedAssists.length = 0;
                           if(!_loc2_)
                           {
                              addr007c:
                              this.init();
                           }
                           §§goto(addr0081);
                        }
                        §§goto(addr007c);
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0065);
            }
            addr0081:
            return;
         }
         §§goto(addr003b);
      }
      
      public function isAssistActive(param1:String) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:AssistVo = this.getRunningAssistByType(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  if(_loc2_.endTime > this._timerProxy.currentTimeStamp)
                  {
                     if(!_loc4_)
                     {
                        §§push(true);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr005d:
                        return false;
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr005d);
      }
      
      public function getRunningAssistByType(param1:String) : AssistVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:AssistVo = null;
         for each(_loc2_ in this._ownedAssists)
         {
            if(!_loc6_)
            {
               if(_loc2_.config.type == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function getAssistPaymentPacks(param1:Number) : Vector.<ConfigPaymentPackDTO>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc2_:ConfigAssistDTO = this.getConfigAssistById(param1);
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         if(_loc7_ || Boolean(_loc3_))
         {
            if(_loc2_)
            {
               addr0049:
               for each(_loc4_ in this._configProxy.config.paymentPacks)
               {
                  if(_loc7_ || Boolean(param1))
                  {
                     if(!isAssistPaymentPack(_loc4_))
                     {
                        continue;
                     }
                     if(!(_loc7_ || Boolean(this)))
                     {
                        continue;
                     }
                  }
                  if(_loc2_.id == _loc4_.assists[0].configId)
                  {
                     if(_loc7_)
                     {
                        _loc3_.push(_loc4_);
                     }
                  }
               }
            }
            return _loc3_;
         }
         §§goto(addr0049);
      }
      
      public function getConfigAssistsByType(param1:String) : Vector.<ConfigAssistDTO>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigAssistDTO = null;
         var _loc2_:Vector.<ConfigAssistDTO> = new Vector.<ConfigAssistDTO>();
         for each(_loc3_ in this._configProxy.config.assists)
         {
            if(_loc7_ || Boolean(param1))
            {
               if(_loc3_.type != param1)
               {
                  continue;
               }
               if(_loc6_ && Boolean(this))
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function getConfigAssistById(param1:Number) : ConfigAssistDTO
      {
         return this._configProxy.config.assists[param1];
      }
      
      public function get initialized() : Boolean
      {
         return this._initialized;
      }
      
      public function get ownedAssists() : Vector.<AssistVo>
      {
         return this._ownedAssists;
      }
   }
}

