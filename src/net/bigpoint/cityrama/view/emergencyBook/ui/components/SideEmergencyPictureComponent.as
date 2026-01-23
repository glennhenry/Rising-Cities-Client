package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class SideEmergencyPictureComponent extends Group implements IStateClient2
   {
      
      private var _627338065emergencyLargeImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideEmergencyPictureComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.mxmlContent = [this._SideEmergencyPictureComponent_Group2_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0070);
               }
               addr0064:
               this.currentState = "normal";
               if(_loc2_)
               {
                  addr0070:
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  })];
               }
               §§goto(addr0098);
            }
            addr0098:
            return;
         }
         §§goto(addr0064);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0047);
         }
         addr002b:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0047:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:EmergencyZoneLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  addr0041:
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(!_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._dataIsDirty)
            {
               if(_loc2_ || _loc2_)
               {
                  this._dataIsDirty = false;
                  if(_loc2_ || _loc1_)
                  {
                     addr003d:
                     §§push(this.emergencyLargeImage);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this._data);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§pop().emergencySWF);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§pop().dynaSWFFileName = §§pop();
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008a:
                                 §§push(this.emergencyLargeImage);
                                 if(!_loc1_)
                                 {
                                    addr009d:
                                    §§push(this._data);
                                    if(!_loc1_)
                                    {
                                       addr00a6:
                                       §§push(§§pop().emergencyLib);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop().dynaLibName = §§pop();
                                          if(!_loc1_)
                                          {
                                             addr00ca:
                                             this.emergencyLargeImage.dynaBmpSourceName = this._data.emergencyImage;
                                             addr00c6:
                                             addr00c2:
                                             addr00be:
                                          }
                                          §§goto(addr00cc);
                                       }
                                       §§goto(addr00ca);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr003d);
            }
            addr00cc:
            return;
         }
         §§goto(addr008a);
      }
      
      private function _SideEmergencyPictureComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 68;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               §§goto(addr0029);
            }
            §§goto(addr007f);
         }
         addr0029:
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._SideEmergencyPictureComponent_BriskImageDynaLib1_c(),this._SideEmergencyPictureComponent_BriskImageDynaLib2_i()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _SideEmergencyPictureComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "quest_polaroidframe";
               if(!_loc2_)
               {
                  _loc1_.width = 188;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0071:
                     _loc1_.height = 229;
                     if(!_loc2_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0088);
                  }
                  addr008c:
                  return _loc1_;
               }
               §§goto(addr0071);
            }
         }
         §§goto(addr007c);
      }
      
      private function _SideEmergencyPictureComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = -1;
            if(!_loc3_)
            {
               addr002b:
               _loc1_.verticalCenter = -1;
               if(_loc2_)
               {
                  _loc1_.id = "emergencyLargeImage";
                  if(!_loc3_)
                  {
                     addr004a:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr006b:
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr007c:
                              this.emergencyLargeImage = _loc1_;
                              if(_loc2_)
                              {
                                 addr0086:
                                 BindingManager.executeBindings(this,"emergencyLargeImage",this.emergencyLargeImage);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr004a);
            }
            §§goto(addr006b);
         }
         §§goto(addr002b);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyLargeImage() : BriskImageDynaLib
      {
         return this._627338065emergencyLargeImage;
      }
      
      public function set emergencyLargeImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._627338065emergencyLargeImage;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._627338065emergencyLargeImage = param1;
                  addr0046:
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyLargeImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
            addr0084:
            return;
         }
         §§goto(addr0046);
      }
   }
}

