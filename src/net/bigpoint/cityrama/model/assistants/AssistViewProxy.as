package net.bigpoint.cityrama.model.assistants
{
   import flash.errors.IllegalOperationError;
   import mx.collections.ArrayCollection;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.assistants.vo.AssistVo;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorVo;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class AssistViewProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "AssistViewProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "AssistViewProxy";
      }
      
      private var _assistProxy:CityAssistProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _cTP:CityTreasuryProxy;
      
      public function AssistViewProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      private static function sortByRuntime(param1:RentCollectorVo, param2:RentCollectorVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.runtime);
            if(_loc3_)
            {
               §§push(param2.runtime);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0083);
                     }
                  }
                  else
                  {
                     addr0071:
                     addr006d:
                     if(param1.runtime < param2.runtime)
                     {
                        if(!_loc4_)
                        {
                           §§push(-1);
                           if(!_loc4_)
                           {
                              addr0083:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0084:
                           return 0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0071);
            }
            §§goto(addr006d);
         }
         §§goto(addr0084);
      }
      
      private static function toFixedSeconds(param1:Number) : Number
      {
         return Math.round(param1 / 1000);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_)
            {
               this._assistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
               §§goto(addr0020);
            }
            §§goto(addr0072);
         }
         addr0020:
         if(_loc2_ || _loc1_)
         {
            this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            if(!(_loc1_ && _loc2_))
            {
               addr0072:
               this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            }
         }
      }
      
      public function get rentCollectorSideMenuVo() : RentCollectorSideMenuVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:AssistVo = null;
         var _loc3_:TimerBarComponentVo = null;
         var _loc1_:RentCollectorSideMenuVo = new RentCollectorSideMenuVo();
         if(!_loc4_)
         {
            _loc1_.saleActive = this.rentCollectorSaleActive;
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               addr0047:
               §§push(this._assistProxy);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     if(§§pop().isAssistActive(§§pop()))
                     {
                        addr008a:
                        _loc2_ = this._assistProxy.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
                        _loc3_ = new TimerBarComponentVo();
                        addr0084:
                        addr0080:
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push(_loc3_);
                           §§push(_loc2_.endTime);
                           if(_loc5_)
                           {
                              §§push(§§pop() - _loc2_.initTime);
                           }
                           §§pop().cycleLength = §§pop();
                           if(!_loc4_)
                           {
                              _loc3_.startTime = _loc2_.initTime;
                              if(!_loc4_)
                              {
                                 addr00d2:
                                 _loc3_.targetTime = _loc2_.endTime;
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       addr010c:
                                       _loc1_.timerVo = _loc3_;
                                    }
                                    §§goto(addr0111);
                                 }
                              }
                              §§goto(addr010c);
                           }
                           §§goto(addr0111);
                        }
                        §§goto(addr00d2);
                     }
                     addr0111:
                     return _loc1_;
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0084);
            }
            §§goto(addr0080);
         }
         §§goto(addr0047);
      }
      
      public function get rentCollectorOffers() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc2_:RentCollectorVo = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigPaymentPackDTO = null;
         var _loc6_:ConfigAssistDTO = null;
         var _loc7_:ConfigPaymentPackDTO = null;
         var _loc8_:ExternalPaymentPackInfoVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc6_ in this._assistProxy.getConfigAssistsByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
         {
            _loc2_ = new RentCollectorVo(_loc6_);
            _loc3_ = this._assistProxy.getAssistPaymentPacks(_loc6_.id);
            if(!(_loc14_ || Boolean(_loc3_)))
            {
               continue;
            }
            §§push(Boolean(_loc3_));
            if(!(_loc13_ && Boolean(this)))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(_loc14_)
                  {
                     addr00b1:
                     §§pop();
                     if(_loc13_ && Boolean(_loc1_))
                     {
                        continue;
                     }
                     §§push(Boolean(_loc3_.length));
                  }
               }
               if(§§pop())
               {
                  if(_loc14_)
                  {
                     var _loc11_:int = 0;
                     if(!(_loc13_ && Boolean(_loc3_)))
                     {
                        for each(_loc7_ in _loc3_)
                        {
                           §§push(_loc7_.type);
                           if(!_loc13_)
                           {
                              §§push(ServerPaymentPackConst.INTERNAL);
                              if(!(_loc13_ && Boolean(_loc3_)))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc13_ && Boolean(_loc3_)))
                                    {
                                       _loc4_ = _loc7_;
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    addr0143:
                                    addr013d:
                                    if(_loc7_.type != ServerPaymentPackConst.EXTERNAL)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc5_ = _loc7_;
                                 continue;
                              }
                              §§goto(addr0143);
                           }
                           §§goto(addr013d);
                        }
                     }
                     if(_loc14_)
                     {
                        addr015f:
                        if(_loc5_)
                        {
                           if(!(_loc14_ || Boolean(_loc2_)))
                           {
                              continue;
                           }
                           _loc8_ = this.treasuryProxy.rentCollectorPackInfoDictionary[_loc5_.id];
                           if(_loc8_)
                           {
                              if(!_loc13_)
                              {
                                 _loc2_.saleActive = this.rentCollectorSaleActive;
                                 if(_loc14_)
                                 {
                                    if(_loc2_.saleActive)
                                    {
                                       if(_loc14_)
                                       {
                                          addr01b0:
                                          §§push(_loc2_);
                                          §§push(_loc8_.discountedPrice.toFixed(2) + " ");
                                          if(!_loc13_)
                                          {
                                             §§push(§§pop() + _loc8_.currencyAsSymbol);
                                          }
                                          §§pop().paymentPrice = §§pop();
                                          if(!(_loc13_ && Boolean(_loc2_)))
                                          {
                                             addr020e:
                                             _loc2_.externalPackKey = _loc5_.key;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       §§push(_loc8_.price.toFixed(2) + " ");
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() + _loc8_.currencyAsSymbol);
                                       }
                                       §§pop().paymentPrice = §§pop();
                                       if(_loc14_ || Boolean(this))
                                       {
                                          §§goto(addr020e);
                                       }
                                    }
                                 }
                                 addr0217:
                                 _loc2_.price = _loc4_.priceRC;
                                 if(!_loc13_)
                                 {
                                    _loc2_.realCurrencyStock = this._resourceProxy.realCurrency;
                                    addr0226:
                                    if(!_loc14_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc1_.addItem(_loc2_);
                                 continue;
                              }
                              §§goto(addr01b0);
                           }
                           §§goto(addr020e);
                        }
                        §§goto(addr0217);
                     }
                  }
                  §§goto(addr0226);
               }
               §§goto(addr015f);
            }
            §§goto(addr00b1);
         }
         if(!(_loc13_ && Boolean(this)))
         {
            _loc1_.source.sort(sortByRuntime);
         }
         return _loc1_;
      }
      
      private function get rentCollectorSaleActive() : Boolean
      {
         return false;
      }
      
      public function get rentCollectorActivatedVo() : RentCollectorActivatedVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:TimerBarComponentVo = null;
         var _loc1_:RentCollectorActivatedVo = new RentCollectorActivatedVo();
         var _loc2_:AssistVo = this._assistProxy.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
         if(_loc4_ || Boolean(_loc1_))
         {
            if(_loc2_)
            {
               if(_loc4_ || Boolean(_loc3_))
               {
                  _loc1_.packGfxId = _loc2_.config.gfxId;
               }
               addr0062:
               _loc3_ = new TimerBarComponentVo();
               if(_loc4_)
               {
                  §§push(_loc3_);
                  §§push(_loc2_.endTime);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§push(§§pop() - _loc2_.initTime);
                  }
                  §§pop().cycleLength = §§pop();
                  if(!_loc5_)
                  {
                     _loc3_.startTime = _loc2_.initTime;
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc3_.targetTime = _loc2_.endTime;
                        if(!_loc5_)
                        {
                           _loc3_.currentTime = this._timerProxy.currentTimeStamp;
                           if(_loc4_ || Boolean(this))
                           {
                              addr00e9:
                              _loc1_.timerVo = _loc3_;
                              if(_loc4_)
                              {
                                 if(toFixedSeconds(_loc3_.cycleLength) > toFixedSeconds(_loc2_.config.lifetime))
                                 {
                                    if(_loc4_)
                                    {
                                       addr0116:
                                       _loc1_.stacked = true;
                                    }
                                 }
                                 §§goto(addr011b);
                              }
                              §§goto(addr0116);
                           }
                           §§goto(addr011b);
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr011b);
                  }
               }
               §§goto(addr00e9);
            }
            addr011b:
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      public function getPatrolViewVo() : PatrolViewVo
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:AssistVo = null;
         var _loc3_:AssistVo = null;
         var _loc4_:TimerBarComponentVo = null;
         var _loc1_:PatrolViewVo = new PatrolViewVo();
         if(!(_loc8_ && Boolean(_loc1_)))
         {
            _loc1_.name = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.name.capital");
         }
         for each(_loc3_ in this._assistProxy.ownedAssists)
         {
            if(!_loc8_)
            {
               if(_loc3_.config.type != ServerAssistTypeConstants.EMERGENCY_SPAWNRATE)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
            break;
         }
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            §§push(Boolean(_loc2_));
            if(!_loc8_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     addr00bc:
                     §§pop();
                     if(!_loc8_)
                     {
                        §§goto(addr00dc);
                     }
                     §§goto(addr00e0);
                  }
               }
               addr00dc:
               §§goto(addr00c3);
            }
            §§goto(addr00bc);
         }
         addr00c3:
         if(_loc2_.endTime > this._timerProxy.currentTimeStamp)
         {
            addr00e0:
            _loc4_ = new TimerBarComponentVo();
            _loc4_.waitingForStart = false;
            if(_loc7_)
            {
               _loc4_.cycleLength = _loc2_.config.lifetime;
               if(!_loc8_)
               {
                  _loc4_.startTime = _loc2_.initTime;
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§goto(addr011f);
                  }
                  §§goto(addr017c);
               }
               addr011f:
               _loc4_.targetTime = _loc2_.endTime;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  _loc4_.currentTime = this._timerProxy.currentTimeStamp;
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0150);
                  }
                  §§goto(addr0164);
               }
               addr0150:
               _loc1_.timerVo = _loc4_;
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  addr0164:
                  _loc1_.gfxId = _loc2_.config.gfxId;
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     addr017c:
                     §§push(_loc1_);
                     §§push(LocaUtils);
                     §§push("rcl.miniLayer.streetPatrol");
                     §§push("rcl.miniLayer.streetPatrol.name.");
                     if(!(_loc8_ && Boolean(_loc1_)))
                     {
                        §§push(§§pop() + _loc2_.config.locaId);
                        if(_loc7_)
                        {
                           addr01b0:
                           §§push(§§pop() + ".capital");
                        }
                        §§pop().name = §§pop().getString(§§pop(),§§pop());
                        if(_loc7_)
                        {
                           addr01c0:
                           _loc1_.emergencyRate = FormulaProxy.calculateEmergencyRateForPatrol(_loc2_.config.behaviourOutput);
                        }
                        §§goto(addr01d3);
                     }
                     §§goto(addr01b0);
                  }
                  §§goto(addr01c0);
               }
               §§goto(addr01d3);
            }
            §§goto(addr017c);
         }
         addr01d3:
         return _loc1_;
      }
      
      public function getPatrolOptions() : Vector.<PatrolOptionVo>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:PatrolOptionVo = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:ConfigAssistDTO = null;
         var _loc7_:* = NaN;
         var _loc1_:Vector.<PatrolOptionVo> = new Vector.<PatrolOptionVo>();
         var _loc8_:int = 0;
         var _loc9_:* = this._assistProxy.getConfigAssistsByType(ServerAssistTypeConstants.EMERGENCY_SPAWNRATE);
         while(true)
         {
            for each(_loc6_ in _loc9_)
            {
               _loc2_ = new PatrolOptionVo();
               if(_loc11_)
               {
                  _loc2_.btnText = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.button.capital");
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     addr0090:
                     _loc2_.btnTooltip = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.button.tooltip");
                     if(_loc11_)
                     {
                        _loc2_.currency = ServerResConst.RESOURCE_REALCURRENCY;
                        if(_loc11_)
                        {
                           _loc2_.gfxId = _loc6_.gfxId;
                           if(!_loc12_)
                           {
                              §§push(_loc2_);
                              §§push(LocaUtils);
                              §§push("rcl.miniLayer.streetPatrol");
                              §§push("rcl.miniLayer.streetPatrol.name.");
                              if(!_loc12_)
                              {
                                 §§push(§§pop() + _loc6_.locaId);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() + ".capital");
                                 }
                              }
                              §§pop().name = §§pop().getString(§§pop(),§§pop());
                              if(!(_loc12_ && Boolean(_loc3_)))
                              {
                                 addr00f8:
                                 §§push(LocaUtils);
                                 §§push("rcl.miniLayer.streetPatrol");
                                 §§push("rcl.miniLayer.streetPatrol.rate.");
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() + _loc6_.locaId);
                                 }
                                 §§push(§§pop().getString(§§pop(),§§pop()));
                                 if(_loc11_ || Boolean(_loc1_))
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc11_)
                                 {
                                    addr0127:
                                    _loc2_.rate = FormulaProxy.calculateEmergencyRateForPatrol(_loc6_.behaviourOutput);
                                    if(!_loc12_)
                                    {
                                       addr013f:
                                       _loc2_.rateText = StringUtil.substitute(_loc4_,_loc2_.rate);
                                       if(!_loc12_)
                                       {
                                          addr0156:
                                          §§push(_loc2_);
                                          §§push(LocaUtils);
                                          §§push(_loc6_.lifetime);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() / 1000);
                                          }
                                          §§pop().runtimeHours = §§pop().getDurationH(§§pop());
                                          if(!_loc12_)
                                          {
                                             _loc2_.configId = _loc6_.id;
                                          }
                                       }
                                    }
                                    addr017d:
                                    _loc3_ = this._assistProxy.getAssistPaymentPacks(_loc6_.id);
                                    if(_loc11_)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc12_ && Boolean(_loc2_)))
                                       {
                                          var _temp_5:* = §§pop();
                                          §§push(_temp_5);
                                          §§push(_temp_5);
                                          if(!_loc12_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      §§push(_loc3_.length);
                                                      if(_loc11_)
                                                      {
                                                         addr01d4:
                                                         var _temp_6:* = §§pop();
                                                         addr01d5:
                                                         §§push(_temp_6);
                                                         if(_temp_6)
                                                         {
                                                            if(!(_loc12_ && Boolean(_loc3_)))
                                                            {
                                                               addr01e7:
                                                               §§pop();
                                                               if(!(_loc12_ && Boolean(_loc3_)))
                                                               {
                                                                  addr01fe:
                                                                  if(!Boolean(_loc3_[0]))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc11_ || Boolean(_loc1_))
                                                                  {
                                                                     addr0210:
                                                                     _loc2_.price = _loc3_[0].priceRC;
                                                                     if(!(_loc12_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr0242:
                                                                        §§push(0);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(!(_loc12_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr02bc:
                                                                                 var _loc10_:* = _loc2_.currency;
                                                                                 if(_loc11_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       if(_loc11_ || Boolean(_loc3_))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc12_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr02fd:
                                                                                                §§push(0);
                                                                                                if(_loc11_ || Boolean(_loc2_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr031c:
                                                                                                §§push(1);
                                                                                                if(_loc11_ || Boolean(_loc3_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr034a:
                                                                                             switch(§§pop())
                                                                                             {
                                                                                                case 0:
                                                                                                   §§push(this._resourceProxy);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop().realCurrency);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc12_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0288:
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr02aa:
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0299:
                                                                                                      §§push(§§pop().ingameCurrency);
                                                                                                      if(!(_loc12_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr02aa);
                                                                                                      }
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                   }
                                                                                                   break;
                                                                                                case 1:
                                                                                                   §§goto(addr0299);
                                                                                                   §§push(this._resourceProxy);
                                                                                             }
                                                                                             addr035e:
                                                                                             _loc2_.affordable = _loc2_.price <= _loc7_;
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr036f:
                                                                                                _loc1_.push(_loc2_);
                                                                                             }
                                                                                             continue;
                                                                                             addr0348:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0318:
                                                                                             addr0316:
                                                                                             if(ServerResConst.RESOURCE_VIRTUALCURRENCY === _loc10_)
                                                                                             {
                                                                                                §§goto(addr031c);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(2);
                                                                                             }
                                                                                             §§goto(addr0348);
                                                                                          }
                                                                                          §§goto(addr031c);
                                                                                       }
                                                                                       §§goto(addr0318);
                                                                                    }
                                                                                    §§goto(addr0316);
                                                                                 }
                                                                                 §§goto(addr02fd);
                                                                              }
                                                                              §§goto(addr035e);
                                                                           }
                                                                           §§goto(addr0288);
                                                                        }
                                                                        §§goto(addr034a);
                                                                     }
                                                                     §§goto(addr036f);
                                                                  }
                                                                  §§goto(addr02bc);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                         }
                                                         §§goto(addr01fe);
                                                      }
                                                      §§goto(addr01e7);
                                                   }
                                                   §§goto(addr0242);
                                                }
                                                §§goto(addr01e7);
                                             }
                                             §§goto(addr01d4);
                                          }
                                          §§goto(addr01d5);
                                       }
                                       §§goto(addr01fe);
                                    }
                                    §§goto(addr0242);
                                 }
                                 §§goto(addr0156);
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr00f8);
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr013f);
                  }
                  §§goto(addr0156);
               }
               §§goto(addr0090);
            }
            return _loc1_;
         }
         throw new IllegalOperationError("AssistViewProxy:: payment pack for patrol could not be found!");
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._cTP);
            if(_loc1_ || Boolean(this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0041:
                     this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                  }
               }
               return this._cTP;
            }
         }
         §§goto(addr0041);
      }
   }
}

