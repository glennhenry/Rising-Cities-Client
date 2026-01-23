package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class GoodUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "backgroundGroup":true,
            "topInformation":true,
            "header":true,
            "headerIcon":true,
            "contentGroup":false
         };
      }
      
      public var _GoodUiInfolayerContent_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _308835287consumerGroup:VGroup;
      
      private var _840871357consumerText:LocaLabel;
      
      private var _450047601consumerTextLabel:LocaLabel;
      
      private var _1461658125producerGroup:VGroup;
      
      private var _601714655producerText:LocaLabel;
      
      private var _1458228651producerTextLabel:LocaLabel;
      
      private var _1286778554specialGroup:VGroup;
      
      private var _1615133998specialtextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:GoodUiInfolayerContentVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GoodUiInfolayerContent()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(!(_loc3_ && _loc1_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc2_))
                  {
                     addr004e:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc3_ && _loc3_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || Boolean(this))
                           {
                              addr0086:
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    super();
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._GoodUiInfolayerContent_bindingsSetup();
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr0122:
                                                         §§pop().§§slot[3] = this;
                                                         if(!_loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_GoodUiInfolayerContentWatcherSetupUtil");
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr0171:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0179:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              addr0197:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return GoodUiInfolayerContent[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr01b4:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr01e3:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr020a:
                                                                                       this.maxWidth = 230;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr0216);
                                                                                       }
                                                                                       §§goto(addr0240);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0222);
                                                                              }
                                                                           }
                                                                           §§goto(addr020a);
                                                                        }
                                                                        §§goto(addr0242);
                                                                     }
                                                                     §§goto(addr01e3);
                                                                  }
                                                                  §§goto(addr0179);
                                                               }
                                                               §§goto(addr020a);
                                                            }
                                                            §§goto(addr0197);
                                                         }
                                                         §§goto(addr0240);
                                                      }
                                                      §§goto(addr0242);
                                                   }
                                                   §§goto(addr0240);
                                                }
                                                §§goto(addr0122);
                                             }
                                             §§goto(addr01b4);
                                          }
                                          §§goto(addr0242);
                                       }
                                       §§goto(addr0197);
                                    }
                                    §§goto(addr01b4);
                                 }
                                 §§goto(addr0197);
                              }
                              §§goto(addr0171);
                           }
                           §§goto(addr01b4);
                        }
                        addr0216:
                        this.width = 230;
                        if(_loc4_)
                        {
                           addr0222:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoodUiInfolayerContent_Array1_c);
                           if(_loc4_ || _loc3_)
                           {
                              addr0242:
                              i = 0;
                              addr0240:
                           }
                        }
                        var _temp_21:*;
                        loop0:
                        do
                        {
                           §§push(§§newactivation());
                           loop1:
                           while(true)
                           {
                              §§push(§§pop().§§slot[4]);
                              loop2:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(§§pop() < §§pop().§§slot[1].length)
                                 {
                                    Binding(bindings[i]).execute();
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(§§newactivation());
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(§§pop().§§slot[4]);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(uint(§§pop() + 1));
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 break;
                              }
                              break;
                           }
                           break;
                        }
                        while(var _temp_21:* = §§pop(), §§pop().§§slot[4] = _temp_21, !_loc3_);
                        
                        return;
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0179);
               }
               §§goto(addr0171);
            }
            §§goto(addr004e);
         }
         §§goto(addr0242);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            GoodUiInfolayerContent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr004b);
            }
            §§goto(addr0061);
         }
         addr004b:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_ || _loc3_)
            {
               addr0061:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
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
            if(param1 is AbstractUIInfolayerContentVo)
            {
               if(!_loc2_)
               {
                  this._implementationData = param1 as GoodUiInfolayerContentVo;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0047:
                     super.data = param1;
                     if(_loc3_)
                     {
                     }
                  }
               }
               return;
            }
            throw new ArgumentError("Wrong Vo for this component use GoodUiInfolayerContentVo " + this);
         }
         §§goto(addr0047);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc8_ || Boolean(this))
         {
            §§push(this._implementationData);
            if(!_loc7_)
            {
               §§push(§§pop());
               if(!(_loc7_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_dirty);
                           if(_loc8_)
                           {
                              addr006e:
                              if(§§pop())
                              {
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       §§push(this._implementationData);
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          addr00af:
                                          addr00ac:
                                          if(§§pop().locked)
                                          {
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_LOCKED;
                                                if(!_loc7_)
                                                {
                                                   this.specialGroup.visible = this.specialGroup.includeInLayout = this._implementationData.goodType != ServerTagConstants.GOOD_NORMAL && this._implementationData.goodType != ServerTagConstants.GOOD_CONSTRUCTION;
                                                   addr00d3:
                                                   if(_loc8_)
                                                   {
                                                      addr010e:
                                                      this.producerGroup.visible = this.producerGroup.includeInLayout = this._implementationData.productionBuildingLocaleIds.length > 0;
                                                      if(!(_loc7_ && Boolean(_loc1_)))
                                                      {
                                                         addr013b:
                                                         this.consumerGroup.visible = this.consumerGroup.includeInLayout = this._implementationData.consumerBuildingLocaleIds.length > 0;
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            addr016c:
                                                            §§push(this._implementationData.goodType);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() == ServerTagConstants.GOOD_EVENT)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr0184:
                                                                     §§push(this.specialtextLabel);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(LocaUtils);
                                                                        §§push("rcl.citysquarequests.");
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() + this._implementationData.currentEventLocaleId);
                                                                        }
                                                                        §§push("rcl.citysquarequests.");
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(this._implementationData);
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().currentEventLocaleId);
                                                                              if(!(_loc7_ && Boolean(_loc1_)))
                                                                              {
                                                                                 addr01ee:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc8_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + ".goods.tooltip.");
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr01ed:
                                                                                       addr01ea:
                                                                                       §§push(§§pop() + this._implementationData.goodLocaleId);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop().text = §§pop();
                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr02bf:
                                                                                       this.producerTextLabel.text = LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.normal.producedin.label");
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr02df:
                                                                                          _loc1_ = "";
                                                                                          if(!(_loc7_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr02f0:
                                                                                             §§push(0);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                addr02f9:
                                                                                                §§push(0);
                                                                                             }
                                                                                             var _loc5_:* = §§pop();
                                                                                             var _loc6_:* = this._implementationData.productionBuildingLocaleIds;
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                if(_loc7_ && Boolean(this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc7_ && Boolean(this)))
                                                                                                      {
                                                                                                         if(!(_loc7_ && Boolean(this)))
                                                                                                         {
                                                                                                            this.producerText.text = _loc1_;
                                                                                                            if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               this.consumerTextLabel.text = LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.normal.usedin.label");
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  _loc1_ = "";
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc8_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr0415:
                                                                                                                           _loc5_ = 0;
                                                                                                                           addr0413:
                                                                                                                           if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              addr0425:
                                                                                                                              _loc6_ = this._implementationData.consumerBuildingLocaleIds;
                                                                                                                              if(_loc8_ || Boolean(_loc1_))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 addr0502:
                                                                                                                                 if(!(_loc7_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr0512:
                                                                                                                                    this.consumerText.text = _loc1_;
                                                                                                                                    if(_loc8_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       addr0527:
                                                                                                                                       super.commitProperties();
                                                                                                                                    }
                                                                                                                                    §§goto(addr052c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0527);
                                                                                                                                 addr04ef:
                                                                                                                                 addr0500:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_ < this._implementationData.consumerBuildingLocaleIds.length - 1)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push("<br>");
                                                                                                                                          addr04e5:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc1_ = §§pop() + §§pop();
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc2_++;
                                                                                                                                                }
                                                                                                                                                addr04ed:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr04e2:
                                                                                                                                    }
                                                                                                                                    §§goto(addr04ef);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04ed);
                                                                                                                              }
                                                                                                                              addr04c4:
                                                                                                                           }
                                                                                                                           §§goto(addr0502);
                                                                                                                        }
                                                                                                                        §§goto(addr0527);
                                                                                                                     }
                                                                                                                     §§goto(addr0415);
                                                                                                                  }
                                                                                                                  §§goto(addr0413);
                                                                                                               }
                                                                                                               addr052c:
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0512);
                                                                                                      }
                                                                                                      §§goto(addr0425);
                                                                                                   }
                                                                                                   §§goto(addr0500);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§§nextvalue(_loc5_,_loc6_));
                                                                                                   if(_loc8_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            addr0336:
                                                                                                            §§push(LocaUtils);
                                                                                                            §§push("rcl.playfielditems.name");
                                                                                                            §§push("rcl.playfielditems.name.");
                                                                                                            if(_loc8_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc3_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               if(_loc8_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  if(_loc2_ < this._implementationData.productionBuildingLocaleIds.length - 1)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr037e:
                                                                                                                        _loc1_ += "<br>";
                                                                                                                        addr037d:
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc2_++;
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr037e);
                                                                                                      }
                                                                                                      §§goto(addr037d);
                                                                                                   }
                                                                                                   §§goto(addr0336);
                                                                                                }
                                                                                             }
                                                                                             while(§§pop())
                                                                                             {
                                                                                                §§push(§§nextvalue(_loc5_,_loc6_));
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(LocaUtils);
                                                                                                      §§push("rcl.playfielditems.name");
                                                                                                      §§push("rcl.playfielditems.name.");
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc4_);
                                                                                                      }
                                                                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                      if(_loc8_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         §§push("");
                                                                                                         if(!(_loc7_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr0499:
                                                                                                                     §§push(LocaUtils);
                                                                                                                     §§push("rcl.playfielditems.name");
                                                                                                                     §§push("rcl.playfielditems.name.");
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc4_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr04b5:
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           §§goto(addr04c4);
                                                                                                                        }
                                                                                                                        §§goto(addr04ed);
                                                                                                                     }
                                                                                                                     §§goto(addr04e2);
                                                                                                                  }
                                                                                                                  §§goto(addr04b5);
                                                                                                               }
                                                                                                               §§goto(addr04ed);
                                                                                                            }
                                                                                                            §§goto(addr04ef);
                                                                                                         }
                                                                                                         §§goto(addr04e5);
                                                                                                      }
                                                                                                      §§goto(addr04e2);
                                                                                                   }
                                                                                                   §§goto(addr04ed);
                                                                                                }
                                                                                                §§goto(addr0499);
                                                                                             }
                                                                                             §§goto(addr0500);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02f9);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0249:
                                                                                    §§pop().text = §§pop();
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr0251:
                                                                                       §§push(LocaUtils);
                                                                                       §§push("rcl.guiinfolayer.goods");
                                                                                       §§push("rcl.guiinfolayer.goods.special.");
                                                                                       if(!(_loc7_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          addr027d:
                                                                                          §§push(§§pop() + this._implementationData.goodLocaleId);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr0276:
                                                                                             §§push(§§pop() + ".flavor");
                                                                                          }
                                                                                          if(§§pop().getString(§§pop(),§§pop()) == "")
                                                                                          {
                                                                                             if(_loc8_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr02a1:
                                                                                                this.specialtextLabel.visible = this.specialtextLabel.includeInLayout = false;
                                                                                                addr029d:
                                                                                                if(!(_loc7_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§goto(addr02bf);
                                                                                                }
                                                                                                §§goto(addr02f9);
                                                                                             }
                                                                                             §§goto(addr02f0);
                                                                                          }
                                                                                          §§goto(addr02bf);
                                                                                       }
                                                                                       §§goto(addr0276);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02f0);
                                                                              }
                                                                              §§goto(addr01ed);
                                                                           }
                                                                           §§goto(addr01ea);
                                                                        }
                                                                        §§goto(addr01ee);
                                                                     }
                                                                     §§goto(addr02a1);
                                                                  }
                                                                  §§goto(addr02bf);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.specialtextLabel);
                                                                  if(_loc8_ || Boolean(_loc1_))
                                                                  {
                                                                     §§push(LocaUtils);
                                                                     §§push("rcl.guiinfolayer.goods");
                                                                     §§push("rcl.guiinfolayer.goods.special.");
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() + this._implementationData.goodLocaleId);
                                                                        if(_loc8_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(§§pop() + ".flavor");
                                                                        }
                                                                     }
                                                                     §§goto(addr0249);
                                                                     §§push(§§pop().getString(§§pop(),§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr02a1);
                                                            }
                                                            §§goto(addr027d);
                                                         }
                                                         §§goto(addr02df);
                                                      }
                                                      §§goto(addr029d);
                                                   }
                                                   §§goto(addr02bf);
                                                }
                                                §§goto(addr010e);
                                             }
                                             §§goto(addr02bf);
                                          }
                                          §§goto(addr00d3);
                                       }
                                       §§goto(addr016c);
                                    }
                                    §§goto(addr0184);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr0527);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00d3);
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00af);
            }
            §§goto(addr00ac);
         }
         §§goto(addr0251);
      }
      
      private function _GoodUiInfolayerContent_Array1_c() : Array
      {
         return [this._GoodUiInfolayerContent_VGroup1_c()];
      }
      
      private function _GoodUiInfolayerContent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxWidth = 230;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.paddingLeft = 5;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.paddingRight = 5;
                        addr0077:
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._GoodUiInfolayerContent_VGroup2_i(),this._GoodUiInfolayerContent_VGroup3_i(),this._GoodUiInfolayerContent_VGroup4_i()];
                           if(_loc2_)
                           {
                              addr00a8:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00a8);
                     }
                     addr00b8:
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr0077);
      }
      
      private function _GoodUiInfolayerContent_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._GoodUiInfolayerContent_LocaLabel1_i()];
                  addr003b:
                  if(!_loc3_)
                  {
                     _loc1_.id = "specialGroup";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr006e:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr008b:
                                 this.specialGroup = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"specialGroup",this.specialGroup);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr009d);
            }
         }
         §§goto(addr003b);
      }
      
      private function _GoodUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "infoLabel";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 80;
               if(_loc2_)
               {
                  _loc1_.id = "specialtextLabel";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0059:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0084);
                           }
                        }
                        §§goto(addr0096);
                     }
                     addr0084:
                     this.specialtextLabel = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0096:
                        BindingManager.executeBindings(this,"specialtextLabel",this.specialtextLabel);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0096);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _GoodUiInfolayerContent_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr006d);
         }
         addr0032:
         _loc1_.horizontalAlign = "center";
         if(_loc2_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._GoodUiInfolayerContent_BriskImageDynaLib1_i(),this._GoodUiInfolayerContent_LocaLabel2_i(),this._GoodUiInfolayerContent_LocaLabel3_i()];
            if(_loc2_)
            {
               addr006d:
               _loc1_.id = "producerGroup";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0090:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr00a1);
                        }
                        §§goto(addr00ab);
                     }
                  }
               }
               addr00a1:
               this.producerGroup = _loc1_;
               if(_loc2_)
               {
                  addr00ab:
                  BindingManager.executeBindings(this,"producerGroup",this.producerGroup);
               }
               §§goto(addr00b8);
            }
            §§goto(addr0090);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0059:
                  _loc1_.id = "_GoodUiInfolayerContent_BriskImageDynaLib1";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0096:
                              this._GoodUiInfolayerContent_BriskImageDynaLib1 = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"_GoodUiInfolayerContent_BriskImageDynaLib1",this._GoodUiInfolayerContent_BriskImageDynaLib1);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0078);
               }
               addr00b5:
               return _loc1_;
            }
            §§goto(addr00a8);
         }
         §§goto(addr0059);
      }
      
      private function _GoodUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "infoLabelLeft";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentWidth = 80;
               if(_loc2_ || Boolean(this))
               {
                  addr0057:
                  _loc1_.id = "producerTextLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0095:
                              this.producerTextLabel = _loc1_;
                              if(_loc2_)
                              {
                                 addr009f:
                                 BindingManager.executeBindings(this,"producerTextLabel",this.producerTextLabel);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009f);
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr009f);
            }
            §§goto(addr0057);
         }
         §§goto(addr0095);
      }
      
      private function _GoodUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "expansionBlue";
            if(_loc3_)
            {
               §§goto(addr002b);
            }
            §§goto(addr005d);
         }
         addr002b:
         _loc1_.percentWidth = 80;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.id = "producerText";
            if(_loc3_ || Boolean(this))
            {
               addr005d:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0085:
                        this.producerText = _loc1_;
                        if(_loc3_)
                        {
                           addr008f:
                           BindingManager.executeBindings(this,"producerText",this.producerText);
                        }
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0085);
            }
            §§goto(addr008f);
         }
         addr009c:
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_VGroup4_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0032);
            }
            §§goto(addr0051);
         }
         addr0032:
         _loc1_.horizontalAlign = "center";
         if(_loc3_ || Boolean(_loc1_))
         {
            addr0051:
            _loc1_.mxmlContent = [this._GoodUiInfolayerContent_BriskImageDynaLib2_c(),this._GoodUiInfolayerContent_LocaLabel4_i(),this._GoodUiInfolayerContent_LocaLabel5_i()];
            if(_loc3_)
            {
               _loc1_.id = "consumerGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0090:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0099:
                           this.consumerGroup = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ab:
                              BindingManager.executeBindings(this,"consumerGroup",this.consumerGroup);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0090);
            }
            §§goto(addr0099);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006c);
               }
            }
            §§goto(addr0068);
         }
         addr006c:
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "infoLabelLeft";
            if(!(_loc3_ && _loc2_))
            {
               addr0046:
               _loc1_.percentWidth = 80;
               if(!_loc3_)
               {
                  _loc1_.id = "consumerTextLabel";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0086:
                              this.consumerTextLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"consumerTextLabel",this.consumerTextLabel);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0086);
                  }
                  addr009d:
                  return _loc1_;
               }
               §§goto(addr007d);
            }
            §§goto(addr0086);
         }
         §§goto(addr0046);
      }
      
      private function _GoodUiInfolayerContent_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "expansionBlue";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 80;
               if(!_loc2_)
               {
                  _loc1_.id = "consumerText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0083:
                              this.consumerText = _loc1_;
                              if(!_loc2_)
                              {
                                 addr008d:
                                 BindingManager.executeBindings(this,"consumerText",this.consumerText);
                              }
                           }
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr008d);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr008d);
      }
      
      private function _GoodUiInfolayerContent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(0);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                        {
                           return specialGroup.visible;
                        },null,"_GoodUiInfolayerContent_BriskImageDynaLib1.visible");
                        if(_loc2_)
                        {
                           addr0087:
                           §§push(§§newactivation());
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr00b5);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr009f);
                  }
                  addr00b5:
                  §§goto(addr0096);
               }
               addr0096:
               §§push(§§pop().§§slot[1]);
               if(_loc2_)
               {
                  addr009f:
                  §§pop()[1] = new Binding(this,function():Boolean
                  {
                     return specialGroup.includeInLayout;
                  },null,"_GoodUiInfolayerContent_BriskImageDynaLib1.includeInLayout");
                  addr00b3:
                  addr00b1:
                  return result;
               }
            }
            §§goto(addr0087);
         }
         §§goto(addr00b3);
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerGroup() : VGroup
      {
         return this._308835287consumerGroup;
      }
      
      public function set consumerGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._308835287consumerGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._308835287consumerGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerText() : LocaLabel
      {
         return this._840871357consumerText;
      }
      
      public function set consumerText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._840871357consumerText;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._840871357consumerText = param1;
                  addr0046:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerTextLabel() : LocaLabel
      {
         return this._450047601consumerTextLabel;
      }
      
      public function set consumerTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._450047601consumerTextLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._450047601consumerTextLabel = param1;
                  if(_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerTextLabel",_loc2_,param1));
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
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get producerGroup() : VGroup
      {
         return this._1461658125producerGroup;
      }
      
      public function set producerGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1461658125producerGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1461658125producerGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0080);
               }
            }
            addr008f:
            return;
         }
         §§goto(addr0080);
      }
      
      [Bindable(event="propertyChange")]
      public function get producerText() : LocaLabel
      {
         return this._601714655producerText;
      }
      
      public function set producerText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._601714655producerText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._601714655producerText = param1;
                  if(_loc3_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0043);
            }
            addr0061:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get producerTextLabel() : LocaLabel
      {
         return this._1458228651producerTextLabel;
      }
      
      public function set producerTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1458228651producerTextLabel;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1458228651producerTextLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerTextLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get specialGroup() : VGroup
      {
         return this._1286778554specialGroup;
      }
      
      public function set specialGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1286778554specialGroup;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1286778554specialGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialtextLabel() : LocaLabel
      {
         return this._1615133998specialtextLabel;
      }
      
      public function set specialtextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1615133998specialtextLabel;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1615133998specialtextLabel = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialtextLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
   }
}

