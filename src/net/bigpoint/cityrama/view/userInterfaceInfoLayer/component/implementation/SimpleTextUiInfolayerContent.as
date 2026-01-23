package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import spark.components.VGroup;
   
   public class SimpleTextUiInfolayerContent extends AbstractUIInfolayerComponent
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      private var _1031434259textfield:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:SimpleTextUiInfolayerContentVo;
      
      public function SimpleTextUiInfolayerContent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               addr002e:
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  addr0052:
                  this.maxWidth = 230;
                  if(_loc2_)
                  {
                     this.width = 230;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0071:
                        this.minWidth = 230;
                        if(!_loc1_)
                        {
                           addr007d:
                           this.minHeight = 40;
                           if(!(_loc1_ && Boolean(this)))
                           {
                              this.maxHeight = 800;
                              if(_loc2_ || _loc1_)
                              {
                                 addr00ae:
                                 this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SimpleTextUiInfolayerContent_Array1_c);
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00ae);
                     }
                     addr00be:
                     return;
                  }
                  §§goto(addr0071);
               }
               §§goto(addr007d);
            }
            §§goto(addr0052);
         }
         §§goto(addr002e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!(param1 is SimpleTextUiInfolayerContentVo))
            {
               throw new ArgumentError("Wrong VBo for this compoent use ImprovementUiInfolayerContentVo " + this);
            }
            if(_loc3_ || Boolean(this))
            {
               this._implementationData = param1 as SimpleTextUiInfolayerContentVo;
               if(!(_loc2_ && _loc2_))
               {
                  super.data = param1;
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(_dirty)
            {
               if(_loc1_ || Boolean(this))
               {
                  this.textfield.text = this._implementationData.data;
                  if(_loc1_ || _loc2_)
                  {
                     if(!isNaN(this._implementationData.width))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           width = this._implementationData.width;
                           if(!(_loc2_ && _loc1_))
                           {
                              addr0081:
                              if(this._implementationData.headerIconDynaVo)
                              {
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr00a3:
                                    super.headerIcon.briskDynaVo = this._implementationData.headerIconDynaVo;
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr00be:
                                       super.commitProperties();
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr00be);
         }
         §§goto(addr0081);
      }
      
      private function _SimpleTextUiInfolayerContent_Array1_c() : Array
      {
         return [this._SimpleTextUiInfolayerContent_VGroup1_c()];
      }
      
      private function _SimpleTextUiInfolayerContent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.paddingLeft = 6;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0067:
                     _loc1_.paddingRight = 6;
                     if(_loc2_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_ || _loc3_)
                        {
                           addr0090:
                           _loc1_.mxmlContent = [this._SimpleTextUiInfolayerContent_LocaLabel1_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b4:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00b4);
                        }
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00b4);
               }
               addr00b8:
               return _loc1_;
            }
            §§goto(addr0090);
         }
         §§goto(addr0067);
      }
      
      private function _SimpleTextUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "infoLabel";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 95;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0062:
                     _loc1_.id = "textfield";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0062);
            }
            addr0089:
            _loc1_.document = this;
            if(!(_loc2_ && _loc2_))
            {
               addr00a7:
               this.textfield = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00b9:
                  BindingManager.executeBindings(this,"textfield",this.textfield);
               }
            }
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get textfield() : LocaLabel
      {
         return this._1031434259textfield;
      }
      
      public function set textfield(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1031434259textfield;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1031434259textfield = param1;
                  addr0038:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textfield",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
   }
}

