package net.bigpoint.cityrama.model.residentialBook.vo
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class ImprovementSlotComponentVo
   {
      
      private var _configSlot:ConfigPlayfieldItemImprovementSlotDTO;
      
      private var _currentState:String;
      
      private var _improvementVo:ImprovementVo;
      
      private var _unlockLevel:int = 1;
      
      private var _currentTime:Number = 0;
      
      public function ImprovementSlotComponentVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get currentState() : String
      {
         return this._currentState;
      }
      
      public function set currentState(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentState = param1;
         }
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._improvementVo = param1;
         }
      }
      
      public function get slotText() : String
      {
         return StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.lockedSlot")),this._unlockLevel);
      }
      
      public function get configSlot() : ConfigPlayfieldItemImprovementSlotDTO
      {
         return this._configSlot;
      }
      
      public function set configSlot(param1:ConfigPlayfieldItemImprovementSlotDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._configSlot = param1;
         }
      }
      
      public function set unlockLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._unlockLevel = param1;
         }
      }
      
      public function get improvementVo() : ImprovementVo
      {
         return this._improvementVo;
      }
      
      public function get improvementBgData() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this.improvementVo)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0035);
               }
            }
            return null;
         }
         addr0035:
         return ImprovementLayerProxy.improvementBackground(this.improvementVo.quality);
      }
      
      public function get improvementBadgeData() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(this.improvementVo)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return ImprovementLayerProxy.improvementQualityBadge(this.improvementVo.quality);
               }
            }
         }
         return null;
      }
      
      public function get improvementGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(this.improvementVo)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return ImprovementLayerProxy.improvementGfx(this.improvementVo.config);
               }
            }
         }
         return null;
      }
      
      public function get progressVo() : TimerBarComponentVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponentVo = null;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.improvementVo);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              addr005f:
                              addr005b:
                              §§push(this.improvementVo.runtime);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(-1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc2_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr0092:
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             addr00a6:
                                             var _temp_9:* = §§pop();
                                             addr00a7:
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§pop();
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr00d3:
                                                      addr00c4:
                                                      addr00c2:
                                                      §§push(this._currentTime == 0);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00d2:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr00d7);
                                                      }
                                                      §§goto(addr015b);
                                                   }
                                                   §§goto(addr00d7);
                                                }
                                             }
                                          }
                                          §§goto(addr00d3);
                                       }
                                       §§goto(addr00a6);
                                    }
                                    §§goto(addr0092);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00c2);
                           }
                           addr00d7:
                           _loc1_ = new TimerBarComponentVo();
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.startTime = this.improvementVo.startTime;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.cycleLength = this.improvementVo.runtime;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.targetTime = this.improvementVo.expirationTime;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr0144:
                                       _loc1_.currentTime = this._currentTime;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr0159);
                                       }
                                    }
                                 }
                                 addr015b:
                                 return null;
                              }
                              §§goto(addr0144);
                           }
                           addr0159:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00d2);
            }
            §§goto(addr005f);
         }
         §§goto(addr005b);
      }
      
      public function set currentTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._currentTime = param1;
         }
      }
      
      public function get unlockLevel() : int
      {
         return this._unlockLevel;
      }
   }
}

