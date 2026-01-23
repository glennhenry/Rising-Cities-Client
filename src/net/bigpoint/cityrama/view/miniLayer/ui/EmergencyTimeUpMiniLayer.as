package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyTimeUpMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
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
      
      private var _1853377972emergencyFailImage:BriskImageDynaLib;
      
      private var _2086709339explanationLabel:LocaLabel;
      
      private var _3387378note:StickyNoteComponent;
      
      private var _1641788370okButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyTimeUpMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function EmergencyTimeUpMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 540;
                  if(_loc2_)
                  {
                     this.height = 313;
                     if(!_loc1_)
                     {
                        addr006a:
                        this.showAttentionSign = true;
                        if(!(_loc1_ && _loc2_))
                        {
                           addr007c:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyTimeUpMiniLayer_Array1_c);
                           if(!_loc1_)
                           {
                              addr0091:
                              this.addEventListener("creationComplete",this.___EmergencyTimeUpMiniLayer_MiniLayerWindow1_creationComplete);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr006a);
               }
               §§goto(addr007c);
            }
            §§goto(addr0091);
         }
         §§goto(addr006a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0049:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(_loc1_ || _loc1_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr005c);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr005b);
                  }
               }
               addr005c:
               §§push(this._isDirty);
               if(_loc1_)
               {
                  addr005b:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     this.title = this._data.title;
                     if(_loc1_)
                     {
                        addr007d:
                        §§push(this.emergencyFailImage);
                        if(_loc1_)
                        {
                           §§push(this._data);
                           if(!_loc2_)
                           {
                              §§push(§§pop().emergencySWFName);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().dynaSWFFileName = §§pop();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr00b9:
                                    §§push(this.emergencyFailImage);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(this._data);
                                       if(_loc1_)
                                       {
                                          addr00d3:
                                          §§push(§§pop().emergencyLibName);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00e3:
                                             §§pop().dynaLibName = §§pop();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§goto(addr00fd);
                                             }
                                             §§goto(addr0130);
                                          }
                                          addr00fd:
                                          this.emergencyFailImage.dynaBmpSourceName = this._data.emergencyBmpName;
                                          §§goto(addr00fa);
                                       }
                                       addr00fa:
                                       §§goto(addr00f6);
                                    }
                                    addr00f6:
                                    addr00f2:
                                    if(_loc1_ || Boolean(this))
                                    {
                                       this.explanationLabel.text = this._data.explanationText;
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr0130:
                                          this.okButton.label = this._data.buttonLabel;
                                       }
                                    }
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr013e);
            }
            §§goto(addr0130);
         }
         addr013e:
      }
      
      public function setData(param1:EmergencyTimeUpMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  addr0039:
                  this._isDirty = true;
                  if(_loc3_)
                  {
                     this._data = param1;
                     if(!_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.note);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().topTape.setStyle("left",60);
               if(!_loc2_)
               {
                  addr004a:
                  this.note.topTape.setStyle("right",60);
                  addr0046:
               }
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr0046);
      }
      
      private function onButtonClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            dispatchEvent(new Event("buttonClose",true));
         }
      }
      
      private function _EmergencyTimeUpMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyTimeUpMiniLayer_HGroup1_c()];
      }
      
      private function _EmergencyTimeUpMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.gap = 25;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006a:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0089:
                        _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_Group1_c(),this._EmergencyTimeUpMiniLayer_Group2_c()];
                        if(!_loc3_)
                        {
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr00b3);
                  }
                  addr009f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00b3:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00b3);
            }
            §§goto(addr0089);
         }
         §§goto(addr006a);
      }
      
      private function _EmergencyTimeUpMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_BriskImageDynaLib1_c(),this._EmergencyTimeUpMiniLayer_BriskImageDynaLib2_i(),this._EmergencyTimeUpMiniLayer_BriskMCDynaLib1_c()];
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr0065);
            }
            §§goto(addr0071);
         }
         addr0065:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0071:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(!_loc3_)
            {
               addr0046:
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = 9;
            if(_loc3_ || _loc3_)
            {
               _loc1_.left = 10;
               if(!_loc2_)
               {
                  §§goto(addr004f);
               }
               §§goto(addr0098);
            }
            addr004f:
            _loc1_.id = "emergencyFailImage";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr007d);
                  }
               }
               §§goto(addr0086);
            }
            addr007d:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0086:
               this.emergencyFailImage = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr0098:
                  BindingManager.executeBindings(this,"emergencyFailImage",this.emergencyFailImage);
               }
            }
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc3_)
               {
                  _loc1_.top = -6;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005d:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.width = 80;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.height = 24;
                           if(!_loc3_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0096);
                  }
               }
               §§goto(addr00a2);
            }
            §§goto(addr005d);
         }
         addr00a6:
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 265;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_VGroup1_c()];
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr004e);
               }
               §§goto(addr005a);
            }
            addr004e:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr005a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _EmergencyTimeUpMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.gap = 5;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_Group3_c(),this._EmergencyTimeUpMiniLayer_Group4_c(),this._EmergencyTimeUpMiniLayer_MultistateButton1_i()];
                  §§goto(addr004a);
               }
               §§goto(addr0079);
            }
         }
         addr004a:
         if(_loc3_ || _loc2_)
         {
            addr0079:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 15;
            if(!_loc2_)
            {
               addr0035:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _EmergencyTimeUpMiniLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_StickyNoteComponent1_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.width = 242;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 160;
               if(!(_loc2_ && _loc2_))
               {
                  addr0046:
                  _loc1_.tapeTop = true;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyTimeUpMiniLayer_Array7_c);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0080:
                        _loc1_.id = "note";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00bc:
                                    this.note = _loc1_;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00ce:
                                       BindingManager.executeBindings(this,"note",this.note);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr0080);
               }
               addr00db:
               return _loc1_;
            }
            §§goto(addr00b3);
         }
         §§goto(addr0046);
      }
      
      private function _EmergencyTimeUpMiniLayer_Array7_c() : Array
      {
         return [this._EmergencyTimeUpMiniLayer_BriskImageDynaLib3_c(),this._EmergencyTimeUpMiniLayer_VGroup2_c()];
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_demolish";
               if(_loc2_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr0078);
            }
            §§goto(addr0066);
         }
         addr0047:
         _loc1_.top = -30;
         if(!(_loc3_ && Boolean(this)))
         {
            addr0066:
            _loc1_.left = -15;
            if(!(_loc3_ && _loc3_))
            {
               addr0078:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.width = 200;
            if(_loc2_)
            {
               _loc1_.height = 150;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = -5;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009a:
                              _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_LocaLabel1_i()];
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr00b2);
                              }
                           }
                        }
                        §§goto(addr00be);
                     }
                  }
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00be:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr009a);
            }
            addr00c2:
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      private function _EmergencyTimeUpMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc2_ || _loc2_)
            {
               _loc1_.maxWidth = 200;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 6;
                  if(_loc2_)
                  {
                     addr005a:
                     _loc1_.id = "explanationLabel";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0087);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0098);
            }
            addr0087:
            _loc1_.document = this;
            if(!(_loc3_ && _loc2_))
            {
               addr0098:
               this.explanationLabel = _loc1_;
               if(!_loc3_)
               {
                  addr00a2:
                  BindingManager.executeBindings(this,"explanationLabel",this.explanationLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _EmergencyTimeUpMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.addEventListener("click",this.__okButton_click);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "okButton";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0086:
                              this.okButton = _loc1_;
                              if(_loc3_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"okButton",this.okButton);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0090);
                     }
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0090);
         }
         §§goto(addr0086);
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onButtonClick();
         }
      }
      
      public function ___EmergencyTimeUpMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyFailImage() : BriskImageDynaLib
      {
         return this._1853377972emergencyFailImage;
      }
      
      public function set emergencyFailImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1853377972emergencyFailImage;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1853377972emergencyFailImage = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyFailImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get explanationLabel() : LocaLabel
      {
         return this._2086709339explanationLabel;
      }
      
      public function set explanationLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2086709339explanationLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2086709339explanationLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"explanationLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
         }
         addr0079:
      }
      
      [Bindable(event="propertyChange")]
      public function get note() : StickyNoteComponent
      {
         return this._3387378note;
      }
      
      public function set note(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3387378note;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3387378note = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"note",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1641788370okButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1641788370okButton = param1;
                  addr003a:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
   }
}

