package net.bigpoint.cityrama.model.improvement
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityImprovementProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityImprovementProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "CityImprovementProxy";
      }
      
      private var _cP:CityProxy;
      
      private var _tP:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _improvements:Vector.<ImprovementVo>;
      
      public function CityImprovementProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super(NAME);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(!(_loc1_ && _loc2_))
            {
               this.updateData();
            }
         }
      }
      
      private function get cityProxy() : CityProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._cP);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr003b:
                     this._cP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr003b);
      }
      
      private function get timerProxy() : TimerProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._tP);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               addr0055:
               return this._tP;
            }
         }
         §§goto(addr0055);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._configProxy);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr0042:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._configProxy;
            }
         }
         §§goto(addr0042);
      }
      
      public function isImprovementActive(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc2_:ImprovementVo = this.getImprovement(param1);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_)
            {
               if(_loc5_ || Boolean(param1))
               {
                  §§push(this.timerProxy.currentTimeStamp);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        addr006b:
                        _loc3_ = §§pop();
                        if(!_loc4_)
                        {
                           addr0072:
                           §§push(_loc3_);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(_loc2_.startTime);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc5_)
                                 {
                                    var _temp_7:* = §§pop();
                                    §§push(_temp_7);
                                    if(!_temp_7)
                                    {
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          §§goto(addr00ad);
                                       }
                                       §§goto(addr00e2);
                                    }
                                    §§goto(addr00d3);
                                 }
                                 addr00ad:
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    addr00c4:
                                    addr00c0:
                                    addr00bf:
                                    §§push(_loc3_ > _loc2_.expirationTime);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr00d3:
                                       §§push(!§§pop());
                                       if(!(_loc4_ && Boolean(param1)))
                                       {
                                          addr00e2:
                                          return §§pop();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00e3:
                                    return false;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0072);
            }
            §§goto(addr00e3);
         }
         §§goto(addr00bf);
      }
      
      public function getImprovement(param1:String) : ImprovementVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ImprovementVo = null;
         var _loc3_:* = null;
         for each(_loc2_ in this._improvements)
         {
            if(!_loc9_)
            {
               var _loc6_:int = 0;
               if(!(_loc9_ && Boolean(this)))
               {
                  var _loc7_:* = _loc2_.tags;
                  if(_loc8_ || Boolean(_loc3_))
                  {
                  }
                  for each(_loc6_ in _loc7_)
                  {
                     §§push(_loc6_);
                     if(_loc8_ || Boolean(param1))
                     {
                        _loc3_ = §§pop();
                        if(_loc8_)
                        {
                           addr009a:
                           if(_loc3_ != param1)
                           {
                              continue;
                           }
                           if(!(_loc8_ || Boolean(_loc2_)))
                           {
                              continue;
                           }
                        }
                        return _loc2_;
                     }
                     §§goto(addr009a);
                  }
               }
            }
         }
         return null;
      }
      
      public function updateData() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:ImprovementVo = null;
         var _loc2_:ConfigImprovementDTO = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:ImprovementDTO = null;
         var _loc5_:Number = NaN;
         if(_loc10_ || Boolean(_loc2_))
         {
            this._improvements = new Vector.<ImprovementVo>();
         }
         for each(_loc4_ in this.cityProxy.city.improvements)
         {
            _loc2_ = this.configProxy.config.cityImprovements[_loc4_.configId];
            _loc1_ = new ImprovementVo(_loc4_,_loc2_);
            _loc3_ = new Vector.<String>();
            if(_loc10_)
            {
               var _loc8_:int = 0;
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  var _loc9_:* = _loc2_.tagIds;
                  if(_loc10_ || Boolean(_loc2_))
                  {
                  }
                  for each(_loc5_ in _loc9_)
                  {
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        _loc3_.push((this.configProxy.config.tags[_loc5_] as ConfigTagDTO).tagName);
                     }
                  }
               }
               if(!_loc10_)
               {
                  continue;
               }
            }
            _loc1_.tags = _loc3_;
            if(_loc10_)
            {
               this._improvements.push(_loc1_);
               if(!_loc10_)
               {
                  continue;
               }
            }
            this.activationAction(_loc1_);
         }
      }
      
      private function activationAction(param1:ImprovementVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1.tags;
         for each(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(!(_loc6_ && Boolean(param1)))
            {
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc2_);
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               if(ServerTagConstants.CLIENT_BONUS_DAY === _loc5_)
               {
                  addr009d:
                  §§push(0);
                  if(_loc6_ && Boolean(_loc3_))
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               switch(§§pop())
               {
                  case 0:
                     TweenMax.delayedCall(1,sendNotification,[ApplicationNotificationConstants.OPEN_BONUS_DAY_ACTIVATED_LAYER]);
                     if(_loc6_ && Boolean(_loc3_))
                     {
                     }
               }
            }
            §§goto(addr009d);
         }
      }
   }
}

