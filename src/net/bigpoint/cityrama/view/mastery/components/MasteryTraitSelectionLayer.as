package net.bigpoint.cityrama.view.mastery.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryTraitSelectionLayer extends PaperPopupWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "closeButton":false,
            "controlBarGroup":false,
            "contentGroup":false,
            "backButton":false,
            "tabBar":false,
            "sideMenu":false,
            "titleDisplay":false
         };
      }
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _909664204traitList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _data:ArrayCollection;
      
      public function MasteryTraitSelectionLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  addr0042:
                  this.styleName = "masteryTraitSelection";
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr007d);
               }
               addr0060:
               this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryTraitSelectionLayer_Array1_c);
               if(_loc2_ || _loc2_)
               {
                  addr007d:
                  this.addEventListener("creationComplete",this.___MasteryTraitSelectionLayer_PaperPopupWindow1_creationComplete);
               }
               return;
            }
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.flavor");
            if(_loc2_)
            {
               this.title = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.title");
            }
         }
      }
      
      public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(param1 is ArrayCollection);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0052:
                     if(!RandomUtilities.isEqual(this._data,param1))
                     {
                        if(_loc3_ || _loc2_)
                        {
                           this._dataDirty = true;
                           addr0063:
                           if(_loc3_ || _loc2_)
                           {
                              this._data = param1 as ArrayCollection;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0098:
                                 invalidateProperties();
                              }
                              §§goto(addr009d);
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0098);
               }
               addr009d:
               return;
            }
            §§goto(addr0052);
         }
         §§goto(addr0063);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               if(this._dataDirty)
               {
                  if(_loc1_)
                  {
                     addr003f:
                     this.traitList.dataProvider = this._data;
                  }
               }
               §§goto(addr004a);
            }
            §§goto(addr003f);
         }
         addr004a:
      }
      
      private function _MasteryTraitSelectionLayer_Array1_c() : Array
      {
         return [this._MasteryTraitSelectionLayer_VGroup1_c()];
      }
      
      private function _MasteryTraitSelectionLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.top = 35;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        addr008b:
                        _loc1_.mxmlContent = [this._MasteryTraitSelectionLayer_LocaLabel1_i(),this._MasteryTraitSelectionLayer_List1_i()];
                        if(!_loc2_)
                        {
                           §§goto(addr00a1);
                        }
                        §§goto(addr00b5);
                     }
                  }
                  addr00a1:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00b5:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr008b);
            }
            §§goto(addr00b5);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _MasteryTraitSelectionLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_)
            {
               _loc1_.styleName = "flavorText";
               if(!(_loc2_ && _loc2_))
               {
                  addr0045:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "flavourLabel";
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0097:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00b2);
                           }
                        }
                     }
                     addr00a8:
                     this.flavourLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr00b2:
                        BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00b2);
            }
            §§goto(addr0045);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _MasteryTraitSelectionLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._MasteryTraitSelectionLayer_ClassFactory1_c();
            if(_loc3_)
            {
               addr0031:
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr009a);
            }
            addr0058:
            _loc1_.setStyle("skinClass",MasteryTraitListSkin);
            if(_loc3_ || Boolean(_loc1_))
            {
               addr006f:
               _loc1_.id = "traitList";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr009a:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00a3);
                        }
                        §§goto(addr00ad);
                     }
                  }
               }
               addr00a3:
               this.traitList = _loc1_;
               if(!_loc2_)
               {
                  addr00ad:
                  BindingManager.executeBindings(this,"traitList",this.traitList);
               }
               §§goto(addr00ba);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _MasteryTraitSelectionLayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = MasteryTraitItemRenderer;
         }
         return _loc1_;
      }
      
      public function ___MasteryTraitSelectionLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._949820541flavourLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._949820541flavourLabel = param1;
                  if(!_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get traitList() : List
      {
         return this._909664204traitList;
      }
      
      public function set traitList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._909664204traitList;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._909664204traitList = param1;
                  if(_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004d);
            }
         }
         addr0073:
      }
   }
}

