package net.bigpoint.cityrama.view.miniLayer.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementInfoMiniLayerComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.TimerDisplayComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class ImprovementInfoMiniLayerComponent extends Group
   {
      
      public static const IMPROVEMENT_OVER:String = "IMPROVEMENT_OVER";
      
      public static const IMPROVEMENT_OUT:String = "IMPROVEMENT_OUT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         IMPROVEMENT_OVER = "IMPROVEMENT_OVER";
         if(_loc1_)
         {
            addr002b:
            IMPROVEMENT_OUT = "IMPROVEMENT_OUT";
         }
         return;
      }
      §§goto(addr002b);
      
      private var _358730216deleteImg:BriskImageDynaLib;
      
      private var _197464874improvement:BriskImageDynaLib;
      
      private var _417625436improvementBackground:BriskImageDynaLib;
      
      private var _927640467improvementBadge:BriskImageDynaLib;
      
      private var _922505399improvementGroup:Group;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _1211893293smallLabel:LocaLabel;
      
      private var _431284669timerDisplay:TimerDisplayComponent;
      
      private var _801236846timerProgress:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementInfoMiniLayerComponentVo;
      
      private var _isDirty:Boolean;
      
      public function ImprovementInfoMiniLayerComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               addr001d:
               if(_loc1_)
               {
                  this.width = 410;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.height = 154;
                     if(_loc1_)
                     {
                        addr0061:
                        this.mxmlContent = [this._ImprovementInfoMiniLayerComponent_StickyNoteComponent1_c()];
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0061);
            }
            addr006c:
            return;
         }
         §§goto(addr001d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004c);
            }
            addr0040:
            return;
         }
         addr004c:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(this._data);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this._isDirty);
                              if(!_loc3_)
                              {
                                 addr0063:
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    §§goto(addr0069);
                                 }
                                 §§goto(addr01df);
                              }
                              addr0069:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    this._isDirty = false;
                                    if(!_loc3_)
                                    {
                                       this.smallLabel.text = this._data.smallLabelText;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          this.improvementBackground.briskDynaVo = this._data.improvementBackground;
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(this.improvement);
                                             if(_loc2_)
                                             {
                                                §§pop().briskDynaVo = this._data.improvementGfx;
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§goto(addr00d2);
                                                }
                                                §§goto(addr01b1);
                                             }
                                             §§goto(addr01f7);
                                          }
                                          addr00d2:
                                          this.improvementBadge.briskDynaVo = this._data.improvementBadge;
                                          if(_loc2_)
                                          {
                                             this.nameLabel.text = this._data.name;
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§goto(addr010a);
                                             }
                                             §§goto(addr0209);
                                          }
                                          addr010a:
                                          §§push(this.timerDisplay);
                                          if(_loc2_)
                                          {
                                             §§pop().visible = this.timerDisplay.includeInLayout = this._data.showTimerDisplay;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr0134:
                                                §§push(this.timerProgress);
                                                if(_loc2_)
                                                {
                                                   §§push(this.timerProgress);
                                                   §§push(this._data.showTimerDisplay);
                                                   if(_loc2_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   var _loc1_:*;
                                                   §§pop().includeInLayout = _loc1_ = §§pop();
                                                   §§pop().visible = _loc1_;
                                                   if(_loc2_)
                                                   {
                                                      §§push(this._data);
                                                      if(_loc2_)
                                                      {
                                                         addr0165:
                                                         §§push(§§pop().showTimerDisplay);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr0182);
                                                               }
                                                               §§goto(addr01d7);
                                                            }
                                                            else
                                                            {
                                                               addr01a3:
                                                               this.timerProgress.data = this._data.harvestProgressVo;
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr01b1);
                                                               }
                                                            }
                                                            §§goto(addr0209);
                                                         }
                                                         §§goto(addr01df);
                                                      }
                                                      §§goto(addr01db);
                                                   }
                                                   §§goto(addr0209);
                                                }
                                                §§goto(addr01a3);
                                             }
                                             §§goto(addr01d7);
                                          }
                                          addr0182:
                                          this.timerDisplay.setData(this._data.timerDisplayVo);
                                          §§goto(addr017e);
                                       }
                                       §§goto(addr0134);
                                    }
                                 }
                                 addr017e:
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr01b1:
                                    this.deleteImg.includeInLayout = this.deleteImg.visible = this._data.showDelete;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr01d7:
                                       addr01df:
                                       addr01db:
                                       if(this._data.showDelete)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr01f7:
                                             this.improvement.alpha = 0.7;
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr0209:
                                                TweenMax.to(this.improvement,0,{"colorMatrixFilter":{
                                                   "amount":1,
                                                   "saturation":0
                                                }});
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0226);
                           }
                           addr0226:
                           return;
                        }
                        §§goto(addr0063);
                     }
                  }
                  §§goto(addr0069);
               }
               §§goto(addr0165);
            }
         }
         §§goto(addr01b1);
      }
      
      private function handleImproMouseOver() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(IMPROVEMENT_OVER,true));
         }
      }
      
      private function handleImproMouseOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event(IMPROVEMENT_OUT,true));
         }
      }
      
      public function set data(param1:ImprovementInfoMiniLayerComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._isDirty = true;
                  }
               }
            }
         }
      }
      
      private function _ImprovementInfoMiniLayerComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 410;
            if(!_loc3_)
            {
               _loc1_.height = 154;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementInfoMiniLayerComponent_Array2_c);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr008b:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr008b);
      }
      
      private function _ImprovementInfoMiniLayerComponent_Array2_c() : Array
      {
         return [this._ImprovementInfoMiniLayerComponent_HGroup1_c()];
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "top";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  addr0059:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 20;
                     if(_loc2_)
                     {
                        addr006d:
                        _loc1_.verticalCenter = 0;
                        if(_loc2_)
                        {
                           §§goto(addr0082);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr006d);
            }
            addr0082:
            _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_VGroup1_c(),this._ImprovementInfoMiniLayerComponent_VGroup2_c()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00ac:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _ImprovementInfoMiniLayerComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalAlign = "top";
            if(!_loc2_)
            {
               §§goto(addr004a);
            }
            §§goto(addr0074);
         }
         addr004a:
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Group2_i(),this._ImprovementInfoMiniLayerComponent_Group3_c()];
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0074:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib1_i(),this._ImprovementInfoMiniLayerComponent_HGroup2_c(),this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib3_i(),this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib4_i()];
            if(_loc3_ || _loc3_)
            {
               _loc1_.addEventListener("mouseOver",this.__improvementGroup_mouseOver);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.addEventListener("mouseOut",this.__improvementGroup_mouseOut);
                  if(_loc3_)
                  {
                     _loc1_.id = "improvementGroup";
                     if(_loc3_)
                     {
                        addr008b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0097:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00b2:
                                 this.improvementGroup = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00c4:
                                    BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr0097);
            }
            §§goto(addr00c4);
         }
         §§goto(addr008b);
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "hip_cardboard_small";
               if(!_loc3_)
               {
                  _loc1_.id = "improvementBackground";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr006f:
                              this.improvementBackground = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0081:
                                 BindingManager.executeBindings(this,"improvementBackground",this.improvementBackground);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr0081);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr006f);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr008e);
            }
            §§goto(addr0081);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.height = 118;
            if(!_loc2_)
            {
               §§goto(addr002a);
            }
            §§goto(addr0053);
         }
         addr002a:
         _loc1_.width = 118;
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc3_)
            {
               addr0053:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr008b);
            }
         }
         addr0067:
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib2_i()];
         if(_loc3_ || _loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr008b:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.id = "improvement";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr004b:
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr0069:
                        this.improvement = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007b:
                           BindingManager.executeBindings(this,"improvement",this.improvement);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0069);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               addr0031:
               _loc1_.left = 3;
               if(_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "hip_badge_common_small";
                  if(!_loc2_)
                  {
                     _loc1_.id = "improvementBadge";
                     if(!_loc2_)
                     {
                        §§goto(addr005d);
                     }
                     §§goto(addr0098);
                  }
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0086);
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr0086);
               }
            }
            addr0086:
            this.improvementBadge = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr0098:
               BindingManager.executeBindings(this,"improvementBadge",this.improvementBadge);
            }
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "delete_indicator";
               if(!_loc3_)
               {
                  _loc1_.right = -6;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.top = -6;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "deleteImg";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr0096);
                              }
                           }
                           §§goto(addr009f);
                        }
                        addr0096:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr009f:
                           this.deleteImg = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00b1:
                              BindingManager.executeBindings(this,"deleteImg",this.deleteImg);
                           }
                        }
                        §§goto(addr00be);
                     }
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00b1);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      public function __improvementGroup_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleImproMouseOver();
         }
      }
      
      public function __improvementGroup_mouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handleImproMouseOut();
         }
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.height = 8;
            if(!(_loc3_ && _loc3_))
            {
               addr0052:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _ImprovementInfoMiniLayerComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 230;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  §§goto(addr0044);
               }
               §§goto(addr0076);
            }
            addr0044:
            if(_loc2_)
            {
               _loc1_.gap = 8;
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr006b);
               }
               §§goto(addr0076);
            }
            addr006b:
            _loc1_.paddingTop = 8;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Group4_c(),this._ImprovementInfoMiniLayerComponent_LocaLabel2_i(),this._ImprovementInfoMiniLayerComponent_TimerDisplayComponent1_i(),this._ImprovementInfoMiniLayerComponent_TimerBarComponent1_i()];
               addr0076:
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00b8:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr00b8);
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Rect1_c(),this._ImprovementInfoMiniLayerComponent_HGroup3_c()];
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_)
         {
            _loc1_.width = 218;
            if(_loc3_ || _loc2_)
            {
               _loc1_.bottomLeftRadiusX = 10;
               if(_loc3_)
               {
                  _loc1_.bottomLeftRadiusY = 30;
                  if(!_loc2_)
                  {
                     _loc1_.bottomRightRadiusX = 10;
                     if(_loc3_)
                     {
                        addr0057:
                        _loc1_.bottomRightRadiusY = 30;
                        if(_loc3_)
                        {
                           _loc1_.topLeftRadiusX = 10;
                           addr0062:
                           if(!_loc2_)
                           {
                              _loc1_.topLeftRadiusY = 30;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr008b:
                                 _loc1_.topRightRadiusX = 10;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    _loc1_.topRightRadiusY = 30;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       _loc1_.height = 40;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00cf:
                                          _loc1_.minHeight = 40;
                                          if(!_loc2_)
                                          {
                                             addr00da:
                                             _loc1_.fill = this._ImprovementInfoMiniLayerComponent_RadialGradient1_c();
                                             if(_loc3_)
                                             {
                                                addr00e9:
                                                _loc1_.initialized(this,null);
                                             }
                                             §§goto(addr00f0);
                                          }
                                          §§goto(addr00e9);
                                       }
                                       addr00f0:
                                       return _loc1_;
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0057);
               }
               §§goto(addr008b);
            }
            §§goto(addr00cf);
         }
         §§goto(addr0057);
      }
      
      private function _ImprovementInfoMiniLayerComponent_RadialGradient1_c() : RadialGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.entries = [this._ImprovementInfoMiniLayerComponent_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.color = 165328;
            if(!_loc3_)
            {
               §§goto(addr0040);
            }
            §§goto(addr0053);
         }
         addr0040:
         _loc1_.ratio = 0.5;
         if(!(_loc3_ && _loc2_))
         {
            addr0053:
            _loc1_.alpha = 0.45;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 40;
            if(!_loc2_)
            {
               _loc1_.width = 218;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0050:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        addr0071:
                        _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0095);
                     }
                     addr0099:
                     return _loc1_;
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0050);
         }
         §§goto(addr0071);
      }
      
      private function _ImprovementInfoMiniLayerComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc2_ && _loc3_))
               {
                  addr004b:
                  _loc1_.styleName = "infoLayerTitle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "nameLabel";
                     if(!_loc2_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr008b:
                                 this.nameLabel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0095:
                                    BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
                                 }
                                 §§goto(addr00a2);
                              }
                              §§goto(addr0095);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr008b);
                     }
                     addr00a2:
                     return _loc1_;
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0076);
            }
            §§goto(addr004b);
         }
         §§goto(addr0095);
      }
      
      private function _ImprovementInfoMiniLayerComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc2_)
            {
               _loc1_.maxWidth = 218;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0059);
            }
            §§goto(addr0095);
         }
         addr004e:
         _loc1_.id = "smallLabel";
         if(!_loc2_)
         {
            addr0059:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr007a);
               }
               §§goto(addr0095);
            }
            §§goto(addr008b);
         }
         addr007a:
         _loc1_.document = this;
         if(!(_loc2_ && Boolean(this)))
         {
            addr008b:
            this.smallLabel = _loc1_;
            if(!_loc2_)
            {
               addr0095:
               BindingManager.executeBindings(this,"smallLabel",this.smallLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_TimerDisplayComponent1_i() : TimerDisplayComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerDisplayComponent = new TimerDisplayComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.visible = false;
               if(!_loc2_)
               {
                  addr004f:
                  _loc1_.id = "timerDisplay";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr008b);
                           }
                        }
                        §§goto(addr0095);
                     }
                  }
                  addr008b:
                  this.timerDisplay = _loc1_;
                  if(_loc3_)
                  {
                     addr0095:
                     BindingManager.executeBindings(this,"timerDisplay",this.timerDisplay);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr007a);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _ImprovementInfoMiniLayerComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 181;
               if(_loc3_)
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0081);
            }
            addr006c:
            _loc1_.revertFlow = true;
            if(!_loc2_)
            {
               _loc1_.id = "timerProgress";
               if(_loc3_)
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00a3:
                           this.timerProgress = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              BindingManager.executeBindings(this,"timerProgress",this.timerProgress);
                           }
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00a3);
               }
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteImg() : BriskImageDynaLib
      {
         return this._358730216deleteImg;
      }
      
      public function set deleteImg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._358730216deleteImg;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._358730216deleteImg = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteImg",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvement() : BriskImageDynaLib
      {
         return this._197464874improvement;
      }
      
      public function set improvement(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._197464874improvement;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._197464874improvement = param1;
                  addr0044:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvement",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementBackground() : BriskImageDynaLib
      {
         return this._417625436improvementBackground;
      }
      
      public function set improvementBackground(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._417625436improvementBackground;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._417625436improvementBackground = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementBackground",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementBadge() : BriskImageDynaLib
      {
         return this._927640467improvementBadge;
      }
      
      public function set improvementBadge(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._927640467improvementBadge;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._927640467improvementBadge = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementBadge",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGroup() : Group
      {
         return this._922505399improvementGroup;
      }
      
      public function set improvementGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._922505399improvementGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._922505399improvementGroup = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr0050);
               }
               addr0040:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1215755049nameLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1215755049nameLabel = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get smallLabel() : LocaLabel
      {
         return this._1211893293smallLabel;
      }
      
      public function set smallLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1211893293smallLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1211893293smallLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005e);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerDisplay() : TimerDisplayComponent
      {
         return this._431284669timerDisplay;
      }
      
      public function set timerDisplay(param1:TimerDisplayComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._431284669timerDisplay;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._431284669timerDisplay = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerDisplay",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerProgress() : TimerBarComponent
      {
         return this._801236846timerProgress;
      }
      
      public function set timerProgress(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._801236846timerProgress;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._801236846timerProgress = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerProgress",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
   }
}

