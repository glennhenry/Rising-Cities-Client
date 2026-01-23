package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class MysteryConstructionMiniLayer extends MiniLayerWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _505916676finishConstruction:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _391232536postIts:HGroup;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _500208440timerComponent:StickyNoteComponent;
      
      private var _707097038timerHeader:PostitHeaderComponentMultiline;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _constructionData:ConstructionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function MysteryConstructionMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               §§goto(addr0026);
            }
            §§goto(addr0074);
         }
         addr0026:
         if(_loc2_ || Boolean(this))
         {
            this.width = 540;
            if(!_loc1_)
            {
               this.height = 313;
               if(_loc2_)
               {
                  this.showAttentionSign = true;
                  if(!_loc1_)
                  {
                     addr0074:
                     this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MysteryConstructionMiniLayer_Array1_c);
                  }
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponentVo = null;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr008f);
         }
         addr002d:
         if(this._constructionData)
         {
            if(!_loc3_)
            {
               this.setTapes();
               if(!_loc3_)
               {
                  this.title = LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.title");
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.flavourText.textFlow = TextConverter.importToFlow(LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.flavour"),TextConverter.TEXT_FIELD_HTML_FORMAT);
                     if(_loc2_ || Boolean(this))
                     {
                        addr008f:
                        this.timerHeader.text = LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.time");
                     }
                  }
                  _loc1_ = new TimerBarComponentVo();
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(_loc1_);
                     §§push(this._constructionData.constructionStepEndTime);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - this._constructionData.constructionStepLength);
                     }
                     §§pop().startTime = §§pop();
                     if(!_loc3_)
                     {
                        _loc1_.currentTime = this._constructionData.constructionCurrentTime;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.targetTime = this._constructionData.constructionStepEndTime;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr0110);
                           }
                           §§goto(addr017e);
                        }
                        addr0110:
                        _loc1_.cycleLength = this._constructionData.constructionStepLength;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(_loc1_);
                           §§push(this._constructionData.hasStarted);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().waitingForStart = §§pop();
                           if(!_loc3_)
                           {
                              _loc1_.userMayStart = true;
                              if(!_loc3_)
                              {
                                 this.timer.data = _loc1_;
                                 if(!_loc3_)
                                 {
                                    this.timerComponent.tapeLeft = true;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr017e:
                                       this.finishConstruction.label = LocaUtils.getThousendSeperatedNumber(this._constructionData.realCurrencyCosts);
                                       if(!_loc3_)
                                       {
                                          addr0197:
                                          this.setTooltips();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr01aa:
                                             this._isDirty = false;
                                          }
                                       }
                                    }
                                    §§goto(addr01b0);
                                 }
                              }
                              §§goto(addr01aa);
                           }
                        }
                        §§goto(addr01b0);
                     }
                     §§goto(addr0197);
                  }
                  §§goto(addr017e);
               }
            }
            §§goto(addr008f);
         }
         addr01b0:
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.timer.progressBar.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.mysteryConstruction.timer"));
         }
      }
      
      public function setData(param1:ConstructionMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._constructionData))
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._isDirty = true;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0069:
                     this._constructionData = param1;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007b:
                        this.invalidateProperties();
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr007b);
            }
            addr007f:
            return;
         }
         §§goto(addr0069);
      }
      
      private function setTapes() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.timerComponent);
            if(!_loc2_)
            {
               §§pop().rightTape.setStyle("top",20);
               if(_loc1_ || _loc1_)
               {
                  §§push(this.timerComponent);
                  if(!_loc2_)
                  {
                     §§pop().rightTape.setStyle("bottom",20);
                     if(_loc1_)
                     {
                        addr006a:
                        §§push(this.timerComponent);
                        if(_loc1_)
                        {
                           addr0073:
                           §§pop().leftTape.setStyle("top",10);
                           if(!_loc2_)
                           {
                              addr0086:
                              this.timerComponent.leftTape.setStyle("bottom",10);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0073);
               }
               addr0091:
               return;
            }
            §§goto(addr0073);
         }
         §§goto(addr006a);
      }
      
      private function _MysteryConstructionMiniLayer_Array1_c() : Array
      {
         return [this._MysteryConstructionMiniLayer_VGroup1_i()];
      }
      
      private function _MysteryConstructionMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.paddingTop = 10;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc3_)
                     {
                        addr0079:
                        _loc1_.gap = -20;
                        if(_loc2_ || _loc3_)
                        {
                           addr008b:
                           _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_LocaLabel1_i(),this._MysteryConstructionMiniLayer_HGroup1_i(),this._MysteryConstructionMiniLayer_Group1_c(),this._MysteryConstructionMiniLayer_HGroup2_c()];
                           if(_loc2_)
                           {
                              _loc1_.id = "mainGroup";
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00d8:
                                       _loc1_.document = this;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr00e9);
                                       }
                                    }
                                    §§goto(addr00f3);
                                 }
                                 addr00e9:
                                 this.mainGroup = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00f3:
                                    BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                 }
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00f3);
                     }
                  }
                  addr0100:
                  return _loc1_;
               }
               §§goto(addr008b);
            }
            §§goto(addr0079);
         }
         §§goto(addr00f3);
      }
      
      private function _MysteryConstructionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 45;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 85;
               if(_loc3_)
               {
                  addr004f:
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_)
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr008d:
                                 this.flavourText = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0097:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr0097);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr008d);
                     }
                     addr00a4:
                     return _loc1_;
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0065);
            }
            §§goto(addr004f);
         }
         §§goto(addr008d);
      }
      
      private function _MysteryConstructionMiniLayer_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 170;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_StickyNoteComponent1_i()];
                  if(_loc3_)
                  {
                     _loc1_.id = "postIts";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr0098);
                              }
                              §§goto(addr00aa);
                           }
                        }
                     }
                     addr0098:
                     this.postIts = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00aa:
                        BindingManager.executeBindings(this,"postIts",this.postIts);
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr00aa);
      }
      
      private function _MysteryConstructionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 240;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 125;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr004c:
                  _loc1_.tapeRight = true;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.tapeLeft = true;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._MysteryConstructionMiniLayer_Array4_c);
                        if(_loc3_ || Boolean(this))
                        {
                           addr0091:
                           _loc1_.id = "timerComponent";
                           if(_loc3_)
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00cf);
            }
            addr009c:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00bc:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr00c5);
                  }
               }
               §§goto(addr00cf);
            }
            addr00c5:
            this.timerComponent = _loc1_;
            if(!_loc2_)
            {
               addr00cf:
               BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _MysteryConstructionMiniLayer_Array4_c() : Array
      {
         return [this._MysteryConstructionMiniLayer_VGroup2_c()];
      }
      
      private function _MysteryConstructionMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.height = 110;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0073:
                        _loc1_.gap = 10;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_PostitHeaderComponentMultiline1_i(),this._MysteryConstructionMiniLayer_TimerBarComponent1_i()];
                           §§goto(addr0085);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr00c4);
            }
            §§goto(addr0073);
         }
         addr0085:
         if(_loc3_ || _loc2_)
         {
            addr00b0:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr00c4:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.id = "timerHeader";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr005c:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0065:
                        this.timerHeader = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr0077:
                           BindingManager.executeBindings(this,"timerHeader",this.timerHeader);
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0065);
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _MysteryConstructionMiniLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(_loc2_)
            {
               _loc1_.id = "timer";
               if(_loc2_ || Boolean(this))
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr006c:
                           this.timer = _loc1_;
                           if(!_loc3_)
                           {
                              addr0076:
                              BindingManager.executeBindings(this,"timer",this.timer);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr0057);
      }
      
      private function _MysteryConstructionMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 25;
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _MysteryConstructionMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 6;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_MultistateButton1_i()];
               if(!_loc2_)
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0071);
            }
            addr0075:
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _MysteryConstructionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "dd_button_icon";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.libNameLeft = "gui_resources_icons";
                  if(_loc3_ || _loc3_)
                  {
                     addr0068:
                     _loc1_.id = "finishConstruction";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00aa:
                                 this.finishConstruction = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00b4:
                                    BindingManager.executeBindings(this,"finishConstruction",this.finishConstruction);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0068);
            }
         }
         §§goto(addr00b4);
      }
      
      [Bindable(event="propertyChange")]
      public function get finishConstruction() : MultistateButton
      {
         return this._505916676finishConstruction;
      }
      
      public function set finishConstruction(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._505916676finishConstruction;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0056:
                  this._505916676finishConstruction = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishConstruction",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._273241018mainGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0060:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr006f);
                  }
               }
               §§goto(addr0060);
            }
         }
         addr006f:
      }
      
      [Bindable(event="propertyChange")]
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._391232536postIts;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._391232536postIts = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
         }
         addr0077:
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110364485timer;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._110364485timer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007d);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr007d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
                  }
               }
               §§goto(addr008c);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : StickyNoteComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._500208440timerComponent;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._500208440timerComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerHeader() : PostitHeaderComponentMultiline
      {
         return this._707097038timerHeader;
      }
      
      public function set timerHeader(param1:PostitHeaderComponentMultiline) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._707097038timerHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._707097038timerHeader = param1;
                  addr0041:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
   }
}

