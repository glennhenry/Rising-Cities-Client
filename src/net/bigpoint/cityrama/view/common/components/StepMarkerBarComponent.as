package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.filters.GlowFilter;
   
   public class StepMarkerBarComponent extends SkinnableComponent
   {
      
      public static const MARKER_CLICKED:String = "MARKER_CLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         MARKER_CLICKED = "MARKER_CLICKED";
         if(!(_loc2_ && _loc1_))
         {
            addr0035:
            _skinParts = {
               "markerHGroup":true,
               "progressBar":true
            };
         }
         return;
      }
      §§goto(addr0035);
      
      private var _data:StepMarkerVo;
      
      private var _dataIsDirty:Boolean;
      
      public var markerHGroup:HGroup;
      
      public var progressBar:Group;
      
      public var addMouseListener:Boolean = true;
      
      private var _clickedMarkerIndex:int;
      
      public function StepMarkerBarComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function set data(param1:StepMarkerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  addr0037:
                  this._data = param1;
                  if(!_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(!_loc3_)
                     {
                        addr004b:
                        invalidateProperties();
                     }
                     §§goto(addr0050);
                  }
               }
               §§goto(addr004b);
            }
            addr0050:
            return;
         }
         §§goto(addr0037);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:Group = null;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = null;
         var _loc5_:StepCheckMarkComponent = null;
         if(_loc6_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc6_)
            {
               if(this._dataIsDirty)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr0056:
                     this._dataIsDirty = false;
                  }
                  addr005b:
                  _loc1_ = new Group();
                  if(_loc6_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc6_)
                     {
                        §§push(this._data);
                        if(!_loc7_)
                        {
                           if(§§pop().stepActiveStyles.length == 0)
                           {
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 throw new Error("step style list cannot be empty");
                              }
                           }
                           else
                           {
                              addr00b1:
                              §§push(this._data);
                              if(!_loc7_)
                              {
                                 if(§§pop().stepActiveStyles.length != this._data.stepInactiveStyles.length)
                                 {
                                    if(!_loc7_)
                                    {
                                       throw new Error("step style list lengths need to match");
                                    }
                                 }
                                 else
                                 {
                                    §§push(this._data);
                                    if(_loc6_)
                                    {
                                       if(§§pop().hasLastInterval)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(this._data);
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                addr0116:
                                                if(§§pop().stepInactiveStyles.length + 1 != this._data.progressSteps.length)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr0131);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0173);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr0153:
                                                if(§§pop().stepInactiveStyles.length != this._data.progressSteps.length)
                                                {
                                                   if(!(_loc7_ && Boolean(this)))
                                                   {
                                                      addr0173:
                                                      throw new Error("progressSteps Vector length needs to match styles lenght when component has no last interval");
                                                   }
                                                }
                                             }
                                          }
                                          loop0:
                                          do
                                          {
                                             if(this.markerHGroup.numElements)
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                §§push(0);
                                                if(_loc6_ || Boolean(this))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(this._data);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop().stepInactiveStyles.length)
                                                               {
                                                                  if(_loc6_ || Boolean(_loc1_))
                                                                  {
                                                                     this.markerHGroup.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleBarUpdateComplete);
                                                                     if(_loc6_ || Boolean(_loc2_))
                                                                     {
                                                                        addr03ee:
                                                                        §§push(0.00001);
                                                                        if(!(_loc7_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc6_ || Boolean(_loc1_))
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              §§goto(addr048d);
                                                                           }
                                                                           §§goto(addr0470);
                                                                        }
                                                                        addr046f:
                                                                        addr0470:
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc7_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr048d:
                                                                           this.progressBar.percentWidth = _loc3_;
                                                                           if(_loc6_ || Boolean(_loc2_))
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr04ac);
                                                                        }
                                                                        addr04ac:
                                                                        return;
                                                                        §§push(§§pop());
                                                                     }
                                                                     §§goto(addr048d);
                                                                  }
                                                                  addr0425:
                                                                  §§push(this.calculateNormalBarProgress());
                                                                  if(!(_loc7_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_ || Boolean(_loc1_))
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc6_ || Boolean(_loc2_)))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr048d);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0470);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this._data);
                                                                  if(_loc6_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop().currentProgress);
                                                                     if(_loc7_ && Boolean(this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this._data);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(§§pop() >= §§pop().progressSteps[_loc2_]);
                                                                        if(_loc7_ && Boolean(this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_ || Boolean(_loc1_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this._data);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().stepActiveStyles[_loc2_]);
                                                                                       if(!(_loc7_ && Boolean(this)))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          addr027e:
                                                                                       }
                                                                                    }
                                                                                    addr0230:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().stepInactiveStyles[_loc2_]);
                                                                                       if(_loc6_ || Boolean(this))
                                                                                       {
                                                                                          §§goto(addr027e);
                                                                                       }
                                                                                    }
                                                                                    addr0268:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    if(!(_loc6_ || Boolean(_loc2_)))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc1_ = new Group();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          _loc1_.percentWidth = 100;
                                                                                          if(!(_loc7_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             this.markerHGroup.addElement(_loc1_);
                                                                                          }
                                                                                       }
                                                                                       _loc5_ = new StepCheckMarkComponent();
                                                                                       _loc5_.styleName = _loc4_;
                                                                                       if(_loc6_ || Boolean(_loc3_))
                                                                                       {
                                                                                          _loc5_.index = _loc2_;
                                                                                          if(!(_loc7_ && Boolean(this)))
                                                                                          {
                                                                                             if(this.addMouseListener)
                                                                                             {
                                                                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr0302:
                                                                                                   _loc5_.addEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr0316:
                                                                                                      _loc5_.addEventListener(MouseEvent.CLICK,this.handleStepMarkerClick);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr032b:
                                                                                                         this.markerHGroup.addElement(_loc5_);
                                                                                                      }
                                                                                                   }
                                                                                                   _loc1_ = new Group();
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   _loc1_.percentWidth = 100;
                                                                                                   if(_loc6_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§push(_loc2_ < this._data.stepInactiveStyles.length - 1);
                                                                                                      if(_loc6_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         var _temp_59:* = §§pop();
                                                                                                         §§push(_temp_59);
                                                                                                         if(!_temp_59)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr037b:
                                                                                                               §§pop();
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr0398:
                                                                                                                  addr0382:
                                                                                                                  §§push(this._data.hasLastInterval);
                                                                                                                  if(!(_loc7_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr0397:
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     this.markerHGroup.addElement(_loc1_);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc2_++;
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§goto(addr0397);
                                                                                                         }
                                                                                                         §§goto(addr0398);
                                                                                                      }
                                                                                                      §§goto(addr037b);
                                                                                                   }
                                                                                                   §§goto(addr0382);
                                                                                                }
                                                                                                §§goto(addr0316);
                                                                                             }
                                                                                             §§goto(addr032b);
                                                                                          }
                                                                                          §§goto(addr0302);
                                                                                       }
                                                                                       §§goto(addr0316);
                                                                                    }
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              addr0226:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr03ee);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._data);
                                                                           if(!(_loc6_ || Boolean(_loc2_)))
                                                                           {
                                                                              addr0418:
                                                                              §§push(§§pop().hasLastInterval);
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr0268);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr0425);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.calculateAdjustedBarProgress());
                                                                        if(_loc6_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr046f);
                                                                        }
                                                                     }
                                                                     §§goto(addr0470);
                                                                  }
                                                                  §§goto(addr0230);
                                                               }
                                                               §§goto(addr0470);
                                                            }
                                                         }
                                                      }
                                                      this.progressBar.visible = _loc3_ > 0.00001;
                                                      §§goto(addr04ac);
                                                   }
                                                   §§goto(addr028f);
                                                }
                                                §§goto(addr01f4);
                                             }
                                             §§goto(addr0226);
                                          }
                                          while(this.markerHGroup.removeElementAt(0), _loc6_ || Boolean(this));
                                          
                                          §§goto(addr0418);
                                          §§push(this._data);
                                          addr019c:
                                       }
                                       else
                                       {
                                          §§push(this._data);
                                       }
                                       §§goto(addr0153);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr019c);
                              }
                              §§goto(addr0116);
                           }
                           addr0131:
                           throw new Error("progressSteps Vector length needs to be styles lenght+1 when component has last interval");
                        }
                        §§goto(addr0153);
                     }
                     §§goto(addr019c);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr04ac);
            }
            §§goto(addr005b);
         }
         §§goto(addr0056);
      }
      
      private function handleBarUpdateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:StepCheckMarkComponent = null;
         if(!_loc3_)
         {
            this.markerHGroup.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleBarUpdateComplete);
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.markerHGroup.getElementAt(this.markerHGroup.numElements - 1) is StepCheckMarkComponent)
               {
                  addr0062:
                  _loc2_ = this.markerHGroup.getElementAt(this.markerHGroup.numElements - 1) as StepCheckMarkComponent;
                  if(!_loc3_)
                  {
                     if(_loc2_.width != 0)
                     {
                        if(!_loc3_)
                        {
                           addr009a:
                           this.positionMarkerHGroup(_loc2_);
                           if(_loc3_ && Boolean(param1))
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc2_.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleLastElementComplete);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr009a);
               }
               addr00c0:
               return;
            }
         }
         §§goto(addr0062);
      }
      
      private function handleLastElementComplete(param1:FlexEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(param1.target is StepCheckMarkComponent)
            {
               if(!_loc3_)
               {
                  (param1.target as StepCheckMarkComponent).removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleLastElementComplete);
                  if(_loc2_ || Boolean(this))
                  {
                     addr0068:
                     this.positionMarkerHGroup(param1.target as StepCheckMarkComponent);
                  }
               }
            }
            return;
         }
         §§goto(addr0068);
      }
      
      private function positionMarkerHGroup(param1:StepCheckMarkComponent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.markerHGroup.right = -param1.width / 2;
         }
      }
      
      private function handleStepMarkerClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1.currentTarget is StepCheckMarkComponent)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._clickedMarkerIndex = (param1.currentTarget as StepCheckMarkComponent).index;
                  if(_loc3_ || Boolean(this))
                  {
                     addr006e:
                     dispatchEvent(new Event(MARKER_CLICKED));
                  }
               }
            }
            return;
         }
         §§goto(addr006e);
      }
      
      private function handleStepMarkerOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.target.addEventListener(MouseEvent.ROLL_OUT,this.handleStepMarkerOut);
            if(_loc3_)
            {
               param1.target.removeEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
               §§goto(addr003a);
            }
            §§goto(addr0066);
         }
         addr003a:
         if(!(_loc2_ && _loc2_))
         {
            addr0066:
            param1.target.filters = [new GlowFilter(11596060,1,4,4,100,1)];
         }
      }
      
      private function handleStepMarkerOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.target.addEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
            if(!_loc3_)
            {
               param1.target.removeEventListener(MouseEvent.ROLL_OUT,this.handleStepMarkerOut);
               if(!_loc3_)
               {
                  addr0052:
                  param1.target.filters = [];
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function getProgressInInterval(param1:int, param2:int, param3:int) : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param2)))
         {
            §§push(param2);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(param1);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(§§pop() - §§pop());
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && Boolean(param3)))
                     {
                        param2 = §§pop();
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr007e:
                           §§push(param3);
                           if(_loc4_)
                           {
                              addr0085:
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0093);
               }
               addr008c:
               §§push(§§pop() - §§pop());
               if(!_loc5_)
               {
                  addr00a5:
                  addr0093:
                  §§push(§§pop());
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     addr00a2:
                     param3 = §§pop();
                     addr00a3:
                     §§push(param3);
                  }
                  return §§pop() / param2;
               }
            }
            §§goto(addr00a2);
         }
         §§goto(addr007e);
      }
      
      private function calculateNormalBarProgress() : Number
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         §§push(0.00001);
         if(!(_loc14_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc15_ || Boolean(_loc3_))
         {
            §§push(this._data);
            if(_loc15_ || Boolean(_loc2_))
            {
               if(§§pop().progressSteps.length)
               {
                  if(_loc15_ || _loc1_)
                  {
                     §§push(this._data);
                     if(_loc15_)
                     {
                        §§push(§§pop().currentProgress);
                        if(!_loc14_)
                        {
                           if(§§pop() > 0)
                           {
                              if(!_loc14_)
                              {
                                 addr00a6:
                                 §§push(this._data.currentProgress);
                                 if(_loc15_ || Boolean(_loc2_))
                                 {
                                    §§push(this._data);
                                    if(_loc15_)
                                    {
                                       if(§§pop() < §§pop().progressSteps[this._data.progressSteps.length - 1])
                                       {
                                          if(_loc15_ || Boolean(_loc3_))
                                          {
                                             §§push(100);
                                             if(!_loc14_)
                                             {
                                                addr00ef:
                                                addr00eb:
                                                §§push(this._data.progressSteps.length - 1);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * 2);
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc2_ = §§pop();
                                                if(!(_loc14_ && _loc1_))
                                                {
                                                   addr0115:
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      addr011d:
                                                      _loc3_ = §§pop();
                                                      if(!(_loc14_ && Boolean(_loc2_)))
                                                      {
                                                         addr012e:
                                                         _loc5_ = 0;
                                                         addr012c:
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this._data);
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop() >= §§pop().progressSteps.length)
                                                               {
                                                                  if(_loc15_ || Boolean(_loc3_))
                                                                  {
                                                                     addr0273:
                                                                     §§push(_loc2_);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc15_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc15_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr02d5:
                                                                                                      §§push(_loc3_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      addr03ee:
                                                                                                      addr03f9:
                                                                                                      addr03f2:
                                                                                                      if(§§pop() < this._data.progressSteps.length - 1)
                                                                                                      {
                                                                                                         if(_loc15_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr040b:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               addr0413:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr043c:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr0443:
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  if(!(_loc14_ && _loc1_))
                                                                                                                  {
                                                                                                                     addr0453:
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc15_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc14_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr048d:
                                                                                                                              addr0482:
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 addr048a:
                                                                                                                                 §§push(§§pop() * _loc4_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§goto(addr04ce);
                                                                                                                              }
                                                                                                                              addr04cc:
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              §§goto(addr04cd);
                                                                                                                           }
                                                                                                                           §§goto(addr04ce);
                                                                                                                        }
                                                                                                                        §§goto(addr048d);
                                                                                                                     }
                                                                                                                     §§goto(addr04ce);
                                                                                                                  }
                                                                                                                  §§goto(addr04cd);
                                                                                                               }
                                                                                                               addr04ce:
                                                                                                            }
                                                                                                            §§goto(addr04a1);
                                                                                                         }
                                                                                                         §§goto(addr0453);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc15_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc15_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§goto(addr043c);
                                                                                                            }
                                                                                                            §§goto(addr04a1);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0443);
                                                                                                   }
                                                                                                   §§goto(addr04cd);
                                                                                                }
                                                                                                addr035d:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc15_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   if(§§pop() > 1)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                            if(_loc15_ || _loc1_)
                                                                                                            {
                                                                                                               addr0397:
                                                                                                               addr038f:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     addr03ad:
                                                                                                                     _loc10_ = §§pop();
                                                                                                                     if(_loc15_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr03bd:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc15_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr03ce:
                                                                                                                           §§push(§§pop() > 0);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr03d5:
                                                                                                                              var _temp_50:* = §§pop();
                                                                                                                              §§push(_temp_50);
                                                                                                                              if(_temp_50)
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr03e0:
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr03ee);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr04c5:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr04cc);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr04ce);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0453);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr03f9);
                                                                                                                           }
                                                                                                                           §§goto(addr03e0);
                                                                                                                        }
                                                                                                                        §§goto(addr04c5);
                                                                                                                     }
                                                                                                                     §§goto(addr0453);
                                                                                                                  }
                                                                                                                  §§goto(addr04a1);
                                                                                                               }
                                                                                                               §§goto(addr0443);
                                                                                                            }
                                                                                                            §§goto(addr048a);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0396:
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§goto(addr0397);
                                                                                                      }
                                                                                                      §§goto(addr043c);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0396);
                                                                                             }
                                                                                             §§goto(addr0482);
                                                                                          }
                                                                                          §§goto(addr038f);
                                                                                       }
                                                                                       §§goto(addr04a1);
                                                                                    }
                                                                                    addr02fd:
                                                                                    §§push(_loc2_);
                                                                                    if(_loc15_ || _loc1_)
                                                                                    {
                                                                                       addr030c:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc14_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          addr033e:
                                                                                          §§push(§§pop());
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr0345:
                                                                                             _loc9_ = §§pop();
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc14_ && Boolean(this)))
                                                                                                {
                                                                                                   §§goto(addr035d);
                                                                                                }
                                                                                                §§goto(addr03ad);
                                                                                             }
                                                                                             §§goto(addr03bd);
                                                                                          }
                                                                                          §§goto(addr0482);
                                                                                       }
                                                                                       §§goto(addr04a1);
                                                                                    }
                                                                                    §§goto(addr04ce);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0345);
                                                                           }
                                                                           §§goto(addr040b);
                                                                        }
                                                                        addr04a1:
                                                                        §§push(§§pop());
                                                                        if(!(_loc14_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           if(_loc14_ && Boolean(this))
                                                                           {
                                                                           }
                                                                           addr04cd:
                                                                           return _loc1_;
                                                                        }
                                                                     }
                                                                     §§goto(addr030c);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this._data);
                                                                  if(!_loc14_)
                                                                  {
                                                                     if(§§pop().progressSteps[_loc5_] <= this._data.currentProgress)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc3_++;
                                                                        if(_loc15_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc5_++;
                                                                           if(!(_loc14_ && Boolean(_loc2_)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr040b);
                                                                        }
                                                                        §§goto(addr04cd);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc14_ && _loc1_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       addr01b9:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc14_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          addr01c8:
                                                                                          _loc12_ = §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr01d4:
                                                                                             §§push(this._data.progressSteps[_loc3_]);
                                                                                             if(_loc14_ && Boolean(this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr01ea:
                                                                                             _loc13_ = §§pop();
                                                                                             if(_loc15_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr01fa:
                                                                                                §§push(this.getProgressInInterval(_loc12_,_loc13_,this._data.currentProgress));
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§goto(addr0273);
                                                                                                      }
                                                                                                      §§goto(addr040b);
                                                                                                   }
                                                                                                   §§goto(addr0413);
                                                                                                }
                                                                                                §§goto(addr043c);
                                                                                             }
                                                                                             §§goto(addr04cd);
                                                                                          }
                                                                                          §§goto(addr01fa);
                                                                                       }
                                                                                       §§goto(addr01ea);
                                                                                    }
                                                                                    §§goto(addr02d5);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this._data);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(int(§§pop().progressSteps[_loc3_ - 1]));
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§goto(addr01b9);
                                                                                       }
                                                                                       addr032f:
                                                                                       §§push(§§pop());
                                                                                       if(_loc15_ || Boolean(_loc3_))
                                                                                       {
                                                                                          §§goto(addr033e);
                                                                                       }
                                                                                       §§goto(addr035d);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01d4);
                                                                              }
                                                                              §§goto(addr03d5);
                                                                           }
                                                                           §§goto(addr03ce);
                                                                        }
                                                                        §§goto(addr01c8);
                                                                     }
                                                                  }
                                                                  §§goto(addr01d4);
                                                               }
                                                               §§goto(addr04cd);
                                                            }
                                                            §§goto(addr03f2);
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!(_loc14_ && Boolean(_loc3_)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  §§goto(addr02fd);
                                                               }
                                                               §§goto(addr040b);
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(!(_loc14_ && Boolean(_loc2_)))
                                                               {
                                                                  §§goto(addr032f);
                                                               }
                                                            }
                                                            §§goto(addr03ee);
                                                         }
                                                         §§goto(addr03e0);
                                                      }
                                                      §§goto(addr03ce);
                                                      addr023b:
                                                   }
                                                   §§goto(addr012e);
                                                }
                                                §§goto(addr023b);
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr0115);
                                       }
                                       else
                                       {
                                          §§push(100);
                                       }
                                       §§goto(addr04c5);
                                    }
                                    §§goto(addr00ef);
                                 }
                                 §§goto(addr012e);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr04cd);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr04cd);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0115);
      }
      
      private function calculateAdjustedBarProgress() : Number
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:int = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         §§push(0.00001);
         if(!(_loc13_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc14_)
         {
            §§push(this._data);
            if(_loc14_ || Boolean(_loc2_))
            {
               if(§§pop().progressSteps.length)
               {
                  if(_loc14_)
                  {
                     §§push(this._data);
                     if(_loc14_)
                     {
                        addr007e:
                        §§push(§§pop().currentProgress);
                        if(_loc14_ || Boolean(_loc3_))
                        {
                           if(§§pop() > 0)
                           {
                              if(!_loc13_)
                              {
                                 addr009f:
                                 §§push(this._data.currentProgress);
                                 if(_loc14_ || _loc1_)
                                 {
                                    §§push(this._data);
                                    if(_loc14_ || _loc1_)
                                    {
                                       if(§§pop() < §§pop().progressSteps[this._data.progressSteps.length - 1])
                                       {
                                          if(!(_loc13_ && Boolean(_loc2_)))
                                          {
                                             addr00e4:
                                             §§push(100);
                                             if(_loc14_ || Boolean(_loc2_))
                                             {
                                                addr00f8:
                                                §§push(this._data.progressSteps.length * 2);
                                                if(_loc14_ || Boolean(this))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc2_ = §§pop();
                                                if(!(_loc13_ && _loc1_))
                                                {
                                                   §§push(0);
                                                   if(_loc14_ || Boolean(_loc3_))
                                                   {
                                                      addr0136:
                                                      _loc3_ = §§pop();
                                                      if(_loc14_ || Boolean(_loc2_))
                                                      {
                                                         addr0147:
                                                         _loc5_ = 0;
                                                         addr0145:
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc13_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= this._data.progressSteps.length)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  addr02b9:
                                                                  §§push(_loc2_);
                                                                  if(_loc14_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           addr02db:
                                                                           §§push(this._data.progressSteps.length - 1);
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr0300:
                                                                                          §§push(100);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc6_);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                §§push(this._data.progressSteps.length - 1);
                                                                                                if(!(_loc13_ && _loc1_))
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         addr0352:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc14_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr0361:
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(_loc14_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0371:
                                                                                                               §§push(_loc3_);
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr0448:
                                                                                                               addr044b:
                                                                                                               addr044a:
                                                                                                               if(§§pop() > 0)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr0455:
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc14_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr0465:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc14_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr0496:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc14_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              addr04a5:
                                                                                                                              _loc10_ = §§pop();
                                                                                                                              if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr04b5:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    addr04c5:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc13_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr0537);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04f7);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0535:
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0536);
                                                                                                                           }
                                                                                                                           §§goto(addr04e4);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0487:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc13_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§goto(addr0496);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0537);
                                                                                                                  }
                                                                                                                  §§goto(addr0536);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     §§goto(addr0487);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr04a5);
                                                                                                            }
                                                                                                            addr0399:
                                                                                                            §§push(_loc2_);
                                                                                                            if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               addr03a8:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc14_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr03ca:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc14_ || Boolean(this))
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        addr03e1:
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              addr03f0:
                                                                                                                              if(§§pop() > 1)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr040c);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr041a:
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr041b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0422);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                              }
                                                                                                                              §§goto(addr041a);
                                                                                                                           }
                                                                                                                           addr040c:
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              addr041b:
                                                                                                                              addr0413:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 addr0422:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc13_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr0431:
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       addr0439:
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc14_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr0448);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr052e:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0535);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0537);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0536);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0512);
                                                                                                                              }
                                                                                                                              addr0537:
                                                                                                                              §§goto(addr04d5);
                                                                                                                           }
                                                                                                                           addr04d5:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc14_ || _loc1_)
                                                                                                                           {
                                                                                                                              addr04f7:
                                                                                                                              addr04e4:
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(!(_loc13_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc4_);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc14_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 addr0512:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc14_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    addr0521:
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr0536:
                                                                                                                                    return _loc1_;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0496);
                                                                                                                     }
                                                                                                                     §§goto(addr0439);
                                                                                                                  }
                                                                                                                  §§goto(addr0431);
                                                                                                               }
                                                                                                               §§goto(addr04a5);
                                                                                                            }
                                                                                                            §§goto(addr0465);
                                                                                                         }
                                                                                                         §§goto(addr03a8);
                                                                                                      }
                                                                                                      §§goto(addr0465);
                                                                                                   }
                                                                                                   §§goto(addr0496);
                                                                                                }
                                                                                                §§goto(addr0413);
                                                                                             }
                                                                                             §§goto(addr0361);
                                                                                          }
                                                                                          addr03c3:
                                                                                          §§push(§§pop());
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§goto(addr03ca);
                                                                                          }
                                                                                          §§goto(addr0496);
                                                                                       }
                                                                                       §§goto(addr0536);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr0343:
                                                                                          §§push(§§pop());
                                                                                          if(_loc14_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§goto(addr0352);
                                                                                          }
                                                                                          §§goto(addr04e4);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr052e);
                                                                                 }
                                                                                 addr0387:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc13_ && _loc1_))
                                                                                    {
                                                                                       §§goto(addr0399);
                                                                                    }
                                                                                    §§goto(addr0439);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§goto(addr03c3);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr052e);
                                                                              }
                                                                              §§goto(addr03f0);
                                                                           }
                                                                           §§goto(addr0465);
                                                                        }
                                                                        §§goto(addr04b5);
                                                                     }
                                                                     §§goto(addr0521);
                                                                  }
                                                                  §§goto(addr04c5);
                                                               }
                                                               §§goto(addr03e1);
                                                            }
                                                            else
                                                            {
                                                               §§push(this._data);
                                                               if(!(_loc13_ && _loc1_))
                                                               {
                                                                  if(§§pop().progressSteps[_loc5_] <= this._data.currentProgress)
                                                                  {
                                                                     if(_loc14_ || _loc1_)
                                                                     {
                                                                        _loc3_++;
                                                                        if(_loc14_ || Boolean(_loc2_))
                                                                        {
                                                                           _loc5_++;
                                                                           if(_loc14_ || _loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr0439);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0249:
                                                                           §§push(this.getProgressInInterval(_loc11_,_loc12_,this._data.currentProgress));
                                                                           if(!(_loc13_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc14_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§goto(addr02b9);
                                                                                 }
                                                                                 §§goto(addr0455);
                                                                              }
                                                                              §§goto(addr0422);
                                                                           }
                                                                        }
                                                                        §§goto(addr0496);
                                                                     }
                                                                     §§goto(addr0371);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc14_ || Boolean(_loc3_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(0);
                                                                     if(!(_loc13_ && Boolean(this)))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc14_ || _loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc14_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr020a:
                                                                                    §§push(§§pop());
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       if(_loc14_ || _loc1_)
                                                                                       {
                                                                                          addr0221:
                                                                                          §§push(this._data);
                                                                                          if(!(_loc13_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr0233:
                                                                                             §§push(int(§§pop().progressSteps[_loc3_]));
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                _loc12_ = §§pop();
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§goto(addr0249);
                                                                                                }
                                                                                                §§goto(addr0300);
                                                                                             }
                                                                                             §§goto(addr03c3);
                                                                                          }
                                                                                          §§goto(addr02db);
                                                                                       }
                                                                                       §§goto(addr0399);
                                                                                    }
                                                                                    §§goto(addr03c3);
                                                                                 }
                                                                                 §§goto(addr0343);
                                                                              }
                                                                              §§goto(addr0221);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this._data);
                                                                              if(!(_loc13_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§push(int(§§pop().progressSteps[_loc3_ - 1]));
                                                                                 if(_loc14_ || _loc1_)
                                                                                 {
                                                                                    §§goto(addr020a);
                                                                                 }
                                                                                 §§goto(addr052e);
                                                                              }
                                                                           }
                                                                           §§goto(addr02db);
                                                                        }
                                                                        §§goto(addr0387);
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc14_)
                                                                     {
                                                                        §§goto(addr0387);
                                                                     }
                                                                  }
                                                                  §§goto(addr044b);
                                                               }
                                                               §§goto(addr0233);
                                                            }
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr0380);
                                                      }
                                                      §§goto(addr044a);
                                                      addr0296:
                                                   }
                                                   §§goto(addr0147);
                                                }
                                                §§goto(addr0145);
                                             }
                                             §§goto(addr0147);
                                          }
                                          §§goto(addr0296);
                                       }
                                       else
                                       {
                                          §§push(100);
                                       }
                                       §§goto(addr052e);
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr0147);
                              }
                              §§goto(addr00e4);
                           }
                           §§goto(addr0536);
                        }
                        §§goto(addr0136);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00e4);
               }
               §§goto(addr0536);
            }
            §§goto(addr007e);
         }
         §§goto(addr0145);
      }
      
      public function get clickedMarkerIndex() : int
      {
         return this._clickedMarkerIndex;
      }
   }
}

