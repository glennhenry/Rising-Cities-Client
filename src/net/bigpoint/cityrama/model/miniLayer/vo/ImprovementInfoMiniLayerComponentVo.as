package net.bigpoint.cityrama.model.miniLayer.vo
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerDisplayComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   
   public class ImprovementInfoMiniLayerComponentVo
   {
      
      public static const STATE_EXPIRED:String = "STATE_EXPIRED";
      
      public static const STATE_NEW:String = "STATE_NEW";
      
      public static const STATE_RUNNING:String = "STATE_RUNNING";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         STATE_EXPIRED = "STATE_EXPIRED";
         if(!(_loc2_ && _loc1_))
         {
            STATE_NEW = "STATE_NEW";
            if(_loc1_)
            {
               addr0043:
               STATE_RUNNING = "STATE_RUNNING";
            }
            return;
         }
      }
      §§goto(addr0043);
      
      private var _improvementVo:ImprovementVo;
      
      private var _state:String;
      
      private var _currentTime:Number = -1;
      
      public function ImprovementInfoMiniLayerComponentVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function set improvementVo(param1:ImprovementVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._improvementVo = param1;
         }
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._state = param1;
         }
      }
      
      public function get improvementGfx() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementGfx(this._improvementVo.config);
      }
      
      public function get improvementBackground() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementBackground(this._improvementVo.config.quality);
      }
      
      public function get improvementBadge() : BriskDynaVo
      {
         return ImprovementLayerProxy.improvementQualityBadge(this._improvementVo.config.quality);
      }
      
      public function get name() : String
      {
         return ImprovementLayerProxy.improvementName(this._improvementVo.config,true);
      }
      
      public function get timerDisplayVo() : TimerDisplayComponentVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerDisplayComponentVo = new TimerDisplayComponentVo();
         if(_loc3_ || _loc2_)
         {
            §§push(this._state);
            if(!_loc2_)
            {
               §§push(STATE_EXPIRED);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc2_)
                     {
                        _loc1_.label = LocaUtils.getDuration(0);
                        if(_loc3_ || _loc2_)
                        {
                           addr005f:
                           _loc1_.progress = 0.05;
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.barColours = ProgressBarComponent.RED_BAR;
                              if(_loc2_ && _loc3_)
                              {
                                 addr0112:
                                 _loc1_.progress = 1;
                              }
                           }
                           else
                           {
                              addr00c4:
                              addr00c8:
                              if(this._improvementVo.runtime != -1)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00eb:
                                    §§push(_loc1_);
                                    §§push(LocaUtils);
                                    §§push(this._improvementVo.runtime);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                    §§pop().label = §§pop().getDuration(§§pop());
                                    if(_loc3_)
                                    {
                                       §§goto(addr0112);
                                    }
                                 }
                              }
                           }
                           §§goto(addr0118);
                        }
                        else
                        {
                           addr00aa:
                           §§push(this._improvementVo);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr00c4);
                                 }
                              }
                              §§goto(addr0118);
                           }
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr005f);
                  }
                  else
                  {
                     addr00a1:
                     addr009e:
                     if(this._state == STATE_NEW)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr00aa);
                        }
                        §§goto(addr0112);
                     }
                  }
                  addr0118:
                  return _loc1_;
               }
               §§goto(addr00a1);
            }
            §§goto(addr009e);
         }
         §§goto(addr00eb);
      }
      
      public function get harvestProgressVo() : TimerBarComponentVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponentVo = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this._state == STATE_RUNNING);
            if(_loc3_ || Boolean(this))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr0067);
                  }
               }
               addr0063:
               §§goto(addr004c);
            }
            §§goto(addr0062);
         }
         addr004c:
         §§push(this._currentTime == -1);
         if(_loc3_)
         {
            addr0062:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0067:
            _loc1_ = new TimerBarComponentVo();
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.cycleLength = this._improvementVo.config.lifetime;
               if(!_loc2_)
               {
                  _loc1_.startTime = this._improvementVo.startTime;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.targetTime = this._improvementVo.expirationTime;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00cd:
                        _loc1_.currentTime = this._currentTime;
                        if(!_loc2_)
                        {
                           return _loc1_;
                        }
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr00cd);
               }
            }
         }
         addr00dc:
         return null;
      }
      
      public function get showDelete() : Boolean
      {
         return this._state == STATE_EXPIRED;
      }
      
      public function get showTimerDisplay() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._state);
            if(_loc2_ || _loc1_)
            {
               §§push(STATE_RUNNING);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop() != §§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(true);
                        if(_loc2_ || _loc2_)
                        {
                           return §§pop();
                        }
                        addr008f:
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this._improvementVo.runtime == -1);
                           if(!_loc1_)
                           {
                              addr00a4:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr00ad:
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       §§goto(addr00b3);
                                    }
                                 }
                                 else
                                 {
                                    addr00b4:
                                    §§push(false);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr00b4);
                  }
                  else
                  {
                     addr006d:
                     addr006a:
                     §§push(this._state == STATE_RUNNING);
                     if(_loc2_)
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(_temp_6)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr008f);
                           }
                           addr00b5:
                           return §§pop();
                        }
                        §§goto(addr00a4);
                     }
                  }
                  addr00b3:
                  return §§pop();
               }
               §§goto(addr006d);
            }
            §§goto(addr006a);
         }
         §§goto(addr00ad);
      }
      
      public function get smallLabelText() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._state);
            if(_loc1_ || Boolean(this))
            {
               §§push(STATE_EXPIRED);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(ResourceManager.getInstance());
                        if(_loc1_)
                        {
                           §§push(§§pop().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.expired.label")));
                           if(_loc1_)
                           {
                              return §§pop();
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00d9);
                     }
                     else
                     {
                        addr0074:
                        §§push(this._state);
                        if(!_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr008d);
            }
            addr007d:
            §§push(STATE_NEW);
            if(!(_loc2_ && Boolean(this)))
            {
               addr008d:
               §§push(§§pop() == §§pop());
               if(!_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr00a5:
                        §§pop();
                        if(_loc1_)
                        {
                           addr00ab:
                           §§push(this._state);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00c6:
                              §§goto(addr00ca);
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr00d3);
                     }
                  }
                  addr00ca:
                  §§goto(addr00c9);
               }
               §§goto(addr00a5);
            }
            addr00c9:
            if(§§pop() == STATE_RUNNING)
            {
               if(!_loc2_)
               {
                  addr00ee:
                  return ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.label"));
                  addr00d9:
                  addr00d3:
               }
            }
            return "";
         }
         §§goto(addr00ab);
      }
      
      public function set currentTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._currentTime = param1;
         }
      }
   }
}

