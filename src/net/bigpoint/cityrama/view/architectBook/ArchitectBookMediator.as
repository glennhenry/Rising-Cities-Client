package net.bigpoint.cityrama.view.architectBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.BlueprintGroupConstants;
   import net.bigpoint.cityrama.model.architecturalBook.SideMenuProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.components.*;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class ArchitectBookMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ArchitectBookMediator";
      
      private static const UI_INFOLAYER_MEDIATOR_NAME:String;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "ArchitectBookMediator";
         if(_loc1_)
         {
            addr0029:
            UI_INFOLAYER_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
         }
         return;
      }
      §§goto(addr0029);
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _architecturalBookProxy:ArchitecturalBookProxy;
      
      private var _sideMenuProxy:SideMenuProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _currentViewStack:Array;
      
      private var _gridTemplate:ArchitectTemplateDataGrid;
      
      private var _templateDict:Dictionary;
      
      private var _openCategoryIndex:int = -1;
      
      private var _openItemIndex:int = -1;
      
      private var _lineContainer:Group;
      
      public function ArchitectBookMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      private static function findOutType(param1:*) : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1 is ArchitectTemplate_Residential);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr00cf:
                     §§push(param1 is ArchitectTemplate_SecurityBuilding);
                     if(_loc3_)
                     {
                        addr00d9:
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00e7:
                           if(!§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    §§push(param1 is ArchitectTemplate_SecurityDevice);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr011c:
                                       var _temp_9:* = §§pop();
                                       addr011d:
                                       §§push(_temp_9);
                                       if(!_temp_9)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr0136);
                                    }
                                    §§goto(addr0204);
                                 }
                                 §§goto(addr019f);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr011c);
                        }
                        §§goto(addr011d);
                     }
                     §§goto(addr01d2);
                  }
                  §§goto(addr01f9);
               }
               else
               {
                  addr0055:
                  §§push(param1 is ArchitectTemplate_Commercial);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(BlueprintGroupConstants.BLUEPRINT_SHOP);
                           if(_loc3_ || _loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr014a);
                        }
                        else
                        {
                           §§goto(addr019f);
                        }
                     }
                     else
                     {
                        §§push(param1 is ArchitectTemplate_Academy);
                        if(!_loc2_)
                        {
                           var _temp_15:* = §§pop();
                           §§push(_temp_15);
                           §§push(_temp_15);
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a2:
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(param1 is ArchitectTemplate_MysteryBuilding);
                                       if(!_loc2_)
                                       {
                                          addr00b2:
                                          var _temp_16:* = §§pop();
                                          §§push(_temp_16);
                                          §§push(_temp_16);
                                          if(_loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr00cf);
                                                   }
                                                   §§goto(addr020d);
                                                }
                                             }
                                             §§goto(addr00d9);
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr01d2);
                                    }
                                    §§goto(addr020d);
                                 }
                                 §§goto(addr0162);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr0204);
                     }
                     §§goto(addr0213);
                  }
                  §§goto(addr00a2);
               }
            }
            addr0126:
            §§pop();
            if(!_loc2_)
            {
               §§push(param1 is ArchitectTemplate_Special);
               if(_loc3_)
               {
                  addr0136:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(BlueprintGroupConstants.BLUEPRINT_SPECIAL);
                        if(!_loc2_)
                        {
                           addr014a:
                           return §§pop();
                        }
                        §§goto(addr01b2);
                     }
                  }
                  else
                  {
                     §§goto(addr0158);
                  }
                  §§goto(addr020d);
               }
               §§goto(addr0162);
            }
            addr0158:
            §§push(param1 is ArchitectTemplate_Decoration);
            if(_loc3_)
            {
               addr0162:
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(BlueprintGroupConstants.BLUEPRINT_DECORATION);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr01ee:
                     §§push(BlueprintGroupConstants.BLUEPRINT_POWERPLANT);
                     if(!_loc3_)
                     {
                        §§goto(addr0213);
                     }
                  }
                  addr01f9:
                  return §§pop();
               }
               §§push(param1 is ArchitectTemplate_Ground);
               if(!_loc2_)
               {
                  §§goto(addr0196);
               }
               §§goto(addr0204);
               §§goto(addr0213);
            }
            addr0196:
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr019f:
                  §§push(BlueprintGroupConstants.BLUEPRINT_GROUNDS);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr01b2:
                     return §§pop();
                  }
                  §§goto(addr0213);
               }
            }
            else
            {
               §§push(param1 is ArchitectTemplate_Powerplant);
               if(!(_loc2_ && param1))
               {
                  addr01d2:
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr01ee);
                     }
                  }
                  else
                  {
                     addr0204:
                     if(param1 is ArchitectTemplate_Production)
                     {
                        if(_loc3_)
                        {
                           addr020d:
                           addr0213:
                           return §§pop();
                           §§push(BlueprintGroupConstants.BLUEPRINT_PRODUCTION);
                        }
                     }
                  }
                  §§goto(addr0214);
               }
               §§goto(addr0204);
            }
            addr0214:
            return "";
         }
         §§goto(addr0055);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_ || _loc2_)
            {
               addr0028:
               this.prepareProxies();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function init(param1:String = "", param2:Number = -1) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this._currentViewStack = [];
            if(!_loc3_)
            {
               §§push(this._gridTemplate);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        this._gridTemplate = new ArchitectTemplateDataGrid();
                        if(_loc4_ || Boolean(param2))
                        {
                           addr006a:
                           this._gridTemplate.addEventListener(ItemClickEvent.ITEM_CLICK,this.handleShowDetailInfo);
                           if(_loc4_)
                           {
                              addr007e:
                              facade.removeMediator(UI_INFOLAYER_MEDIATOR_NAME);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0094:
                                 this.removeListener();
                                 if(!(_loc3_ && Boolean(param2)))
                                 {
                                    this.createGuiInfolayer();
                                    if(_loc4_)
                                    {
                                       §§goto(addr00bd);
                                    }
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr007e);
                     }
                     addr00bd:
                     this.pushTemplate(this._gridTemplate);
                     if(_loc4_ || Boolean(param2))
                     {
                        addr00d5:
                        this.setupListeners();
                        if(!_loc3_)
                        {
                           addr00e0:
                           this.setArchitectData(param1,param2);
                        }
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006a);
            }
            §§goto(addr00d5);
         }
         addr00e8:
      }
      
      public function removeRelevantListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.removeListener();
         }
      }
      
      private function setArchitectData(param1:String, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(!_loc4_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0047:
                        §§pop();
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0055:
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              addr0073:
                              addr0063:
                              if(§§pop() == "")
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this._architecturalBookProxy);
                                    if(!(_loc4_ && Boolean(param2)))
                                    {
                                       §§push(§§pop().viewedArchitectureCategory);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          addr009f:
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             param1 = §§pop();
                                             if(_loc3_)
                                             {
                                                addr00ab:
                                                if(param2 != -1)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr00b7:
                                                      addr00da:
                                                      addr00bb:
                                                      §§push(this._architecturalBookProxy.getCategoryByConfigId(param2));
                                                      if(_loc3_ || Boolean(param2))
                                                      {
                                                         addr00ce:
                                                         §§push(§§pop());
                                                      }
                                                      param1 = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         this._openItemIndex = this._architecturalBookProxy.getItemIndexByCatAndConfigId(param1,param2);
                                                         if(_loc3_)
                                                         {
                                                            addr00f4:
                                                            this._openCategoryIndex = this._sideMenuProxy.getIndexByType(param1);
                                                            if(_loc3_)
                                                            {
                                                               addr0107:
                                                               this.handleAddedToStage(null);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr00f4);
                                             }
                                             §§goto(addr00b7);
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00da);
                                    }
                                    §§goto(addr00bb);
                                 }
                                 §§goto(addr0107);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00f4);
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0047);
            }
            §§goto(addr0063);
         }
         §§goto(addr0055);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._architecturalBookProxy = facade.retrieveProxy(ArchitecturalBookProxy.NAME) as ArchitecturalBookProxy;
            if(!(_loc1_ && _loc1_))
            {
               addr0047:
               this._sideMenuProxy = facade.retrieveProxy(SideMenuProxy.NAME) as SideMenuProxy;
               if(_loc2_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr007f);
            }
            addr005e:
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(!_loc1_)
            {
               addr007f:
               this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
               if(!(_loc1_ && Boolean(this)))
               {
                  this._serverStorageProxy = ServerStorageProxy(facade.retrieveProxy(ServerStorageProxy.NAME));
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      private function get templateDict() : Dictionary
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(this._templateDict == null)
            {
               if(_loc2_ || _loc2_)
               {
                  this._templateDict = new Dictionary(true);
               }
            }
         }
         return this._templateDict;
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§push(PaperPopupWindow.BACK);
               if(!_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.handleBack);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        addr0060:
                        §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                        if(_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
                           if(_loc1_ || Boolean(this))
                           {
                              addr0089:
                              this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
                              addr0083:
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0089);
            }
            §§goto(addr0060);
         }
         addr0090:
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§push(PaperPopupWindow.BACK);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§pop().removeEventListener(§§pop(),this.handleBack);
                  if(_loc2_)
                  {
                     addr0047:
                     §§push(this.component);
                     if(!_loc1_)
                     {
                        §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr006c);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0081);
               }
               addr006c:
               §§pop().removeEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
               if(_loc2_ || Boolean(this))
               {
                  addr008a:
                  this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
                  addr0084:
                  addr0081:
               }
               return;
            }
            §§goto(addr0084);
         }
         §§goto(addr0047);
      }
      
      private function handleAddedToStage(param1:Event = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Array = null;
         if(_loc3_)
         {
            if(this._sideMenuProxy)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§push(this.component);
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(this.component);
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(§§pop().sideMenuComponent);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       addr0075:
                                       §§push(this.component);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr0085:
                                          §§push(§§pop().sideMenuComponent);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr008e);
                                          }
                                          §§goto(addr00ba);
                                       }
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr016c);
                              }
                              addr008e:
                              §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleSubMenuIndexChange);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 addr00ba:
                                 this.component.sideMenuComponent.addEventListener("CloseDetailView_Event",this.handleSideMenuBack);
                                 addr00b7:
                                 addr00b4:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr00d3:
                                    _loc2_ = this.findGroupsWithNewItems();
                                    if(_loc3_)
                                    {
                                       this._sideMenuProxy.addNewIconAt(_loc2_);
                                       if(_loc3_)
                                       {
                                          §§push(this.component);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().sideMenuComponent);
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                §§pop().dataProvider = this._sideMenuProxy.currentEntries;
                                                if(!_loc4_)
                                                {
                                                   addr0118:
                                                   §§push(this.component);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop().sideMenuComponent);
                                                      if(_loc3_ || Boolean(_loc2_))
                                                      {
                                                         if(§§pop().selectedIndex == -1)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr0151:
                                                               this.component.sideMenuComponent.selectedIndex = this._openCategoryIndex;
                                                               addr014e:
                                                               addr014b:
                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0167:
                                                                  this.handleSubMenuIndexChange();
                                                               }
                                                            }
                                                            §§goto(addr016c);
                                                         }
                                                         §§goto(addr0167);
                                                      }
                                                      §§goto(addr0151);
                                                   }
                                                   §§goto(addr014e);
                                                }
                                                addr016c:
                                                this.createGuiInfolayer();
                                                §§goto(addr0171);
                                             }
                                             §§goto(addr0151);
                                          }
                                          §§goto(addr014e);
                                       }
                                       §§goto(addr0118);
                                    }
                                    §§goto(addr014b);
                                 }
                              }
                              addr0171:
                              return;
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr016c);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr00d3);
            }
            §§goto(addr016c);
         }
         §§goto(addr00b4);
      }
      
      private function createGuiInfolayer() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            this._lineContainer = new Group();
            if(!(_loc5_ && _loc2_))
            {
               this._lineContainer.percentHeight = 100;
               if(_loc4_)
               {
                  addr005a:
                  this._lineContainer.percentWidth = 100;
                  if(!_loc5_)
                  {
                     addr0068:
                     this.component.addElement(this._lineContainer);
                  }
               }
               var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
               if(_loc4_)
               {
                  _loc2_.setProperties(590,95,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM,0);
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.push(_loc2_);
                     if(_loc4_)
                     {
                        addr00bc:
                        this._lineContainer.addElement(_loc2_);
                     }
                  }
                  var _loc3_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
                  if(_loc4_ || Boolean(this))
                  {
                     _loc3_.setProperties(590,250,78,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,1);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc1_.push(_loc3_);
                        if(_loc4_)
                        {
                           addr0118:
                           this._lineContainer.addElement(_loc3_);
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
                           }
                        }
                        §§goto(addr013e);
                     }
                     §§goto(addr0118);
                  }
                  addr013e:
                  return;
               }
               §§goto(addr00bc);
            }
            §§goto(addr0068);
         }
         §§goto(addr005a);
      }
      
      private function destroyGuiInfolayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
            if(!(_loc2_ && _loc2_))
            {
               facade.removeMediator(UI_INFOLAYER_MEDIATOR_NAME);
               if(!_loc2_)
               {
                  §§push(this._lineContainer == null);
                  if(_loc1_)
                  {
                     §§push(!§§pop());
                     if(!(_loc2_ && Boolean(this)))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc1_)
                              {
                                 addr008e:
                                 addr0075:
                                 §§push(this._lineContainer.parent == null);
                                 if(_loc1_)
                                 {
                                    addr008d:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc1_ || Boolean(this))
                                    {
                                       this.component.removeElement(this._lineContainer);
                                       if(_loc1_)
                                       {
                                          addr00af:
                                          this._lineContainer = null;
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0075);
            }
         }
         §§goto(addr00af);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!(_loc5_ && Boolean(this)))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_ || Boolean(_loc3_))
            {
               addr0080:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "type":param1.callerType,
                  "cid":_loc2_,
                  "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                  "pt":_loc3_
               },NAME);
            }
            return;
         }
         §§goto(addr0080);
      }
      
      private function findGroupsWithNewItems() : Array
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc1_:* = "";
         var _loc3_:int = 0;
         var _loc4_:* = this._sideMenuProxy.getAllTypes();
         for each(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(_loc6_ || Boolean(_loc2_))
            {
               _loc2_ = §§pop();
               if(_loc5_ && Boolean(_loc3_))
               {
                  continue;
               }
               §§push(_loc1_);
               if(_loc6_)
               {
                  §§push(§§pop() + this.groupHasNewItems(_loc2_));
               }
            }
            _loc1_ = §§pop();
         }
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(_loc1_);
            if(_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(_loc6_)
                  {
                     §§goto(addr00cd);
                  }
               }
               §§goto(addr00cc);
            }
            addr00cd:
            §§goto(addr00ab);
         }
         addr00ab:
         §§push(_loc1_);
         if(_loc6_ || Boolean(this))
         {
            §§push(§§pop().substr(0,_loc1_.length - 1));
            if(_loc6_)
            {
               _loc1_ = §§pop();
               addr00cc:
               §§push(_loc1_);
            }
         }
         return §§pop().split("|");
      }
      
      private function groupHasNewItems(param1:String) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:BlueprintVo = null;
         var _loc2_:ArrayCollection = this._architecturalBookProxy.getBlueprintsByGroup(param1);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc7_)
            {
               if(_loc3_)
               {
                  if(_loc6_)
                  {
                     if(_loc3_.isItemNew)
                     {
                        if(_loc6_)
                        {
                           return param1 + "|";
                        }
                     }
                  }
               }
            }
         }
         return "";
      }
      
      private function handleSubMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null;
         do
         {
            if(this._currentViewStack.length > 1)
            {
               continue;
            }
            if(_loc3_ || Boolean(this))
            {
               this._soundProxy.playButtonClick();
               if(!_loc4_)
               {
                  if(this.component.sideMenuComponent.selectedItem)
                  {
                     if(_loc3_)
                     {
                        §§push(SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr0086:
                           this._architecturalBookProxy.viewedArchitectureCategory = _loc2_;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              break;
                           }
                        }
                     }
                     §§goto(addr0157);
                  }
                  §§goto(addr01b5);
               }
               §§goto(addr0086);
            }
            §§push(this._gridTemplate);
            if(!_loc4_)
            {
               §§pop().itemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleGridUpdateComplete);
               if(_loc3_)
               {
                  addr0157:
                  §§push(this._gridTemplate);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop().itemList.invalidateProperties();
                     if(_loc3_ || Boolean(param1))
                     {
                        this._gridTemplate.flavorText.text = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),"rcl.booklayer.architect.flavortext_" + _loc2_);
                        §§goto(addr017f);
                     }
                     §§goto(addr01c0);
                  }
                  §§goto(addr017f);
               }
               §§goto(addr01b5);
            }
            addr017f:
            if(!(_loc4_ && Boolean(param1)))
            {
               addr01b5:
               this.createGuiInfolayer();
               if(!_loc4_)
               {
                  addr01c0:
                  this.checkSubMenuOpen(_loc2_);
               }
            }
            §§goto(addr01c7);
         }
         while(this.popTemplate(), _loc3_ || Boolean(_loc2_));
         
         §§push(this._gridTemplate);
         if(_loc3_ || Boolean(param1))
         {
            §§pop().itemList.dataProvider = this._architecturalBookProxy.getBlueprintsByGroup(_loc2_);
            if(!_loc4_)
            {
               this.checkForItemToOpen();
               if(_loc3_ || Boolean(this))
               {
                  if(this._openItemIndex == -1)
                  {
                     if(!_loc4_)
                     {
                        §§push(this._gridTemplate);
                        if(!_loc4_)
                        {
                           §§pop().itemList.ensureIndexIsVisible(0);
                           if(!(_loc3_ || _loc3_))
                           {
                              §§goto(addr0138);
                           }
                           §§goto(addr0157);
                        }
                        else
                        {
                           addr0128:
                           §§pop().itemList.ensureIndexIsVisible(this._openItemIndex);
                           if(_loc3_)
                           {
                              §§goto(addr0138);
                           }
                        }
                     }
                     §§goto(addr01c7);
                  }
                  else
                  {
                     §§push(this._gridTemplate);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr0128);
                     }
                  }
                  §§goto(addr017f);
               }
               §§goto(addr0157);
            }
            addr01c7:
            return;
         }
         §§goto(addr0128);
      }
      
      private function handleGridUpdateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._gridTemplate);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().itemList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleGridUpdateComplete);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005f);
               }
               §§goto(addr0077);
            }
            addr005f:
            this._gridTemplate.itemList.ensureIndexIsVisible(this._openItemIndex);
            §§goto(addr005b);
         }
         addr005b:
         if(_loc2_ || Boolean(param1))
         {
            addr0077:
            this._openItemIndex = -1;
         }
      }
      
      private function checkForItemToOpen() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueprintVo = null;
         if(_loc2_)
         {
            if(this._openItemIndex != -1)
            {
               if(!_loc3_)
               {
                  addr0029:
                  §§push(this._gridTemplate);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(§§pop().itemList.dataProvider.getItemAt(this._openItemIndex) != null)
                     {
                        addr0051:
                        _loc1_ = this._gridTemplate.itemList.dataProvider.getItemAt(this._openItemIndex) as BlueprintVo;
                        addr004d:
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(_loc1_)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0092:
                                 if(_loc1_.isItemNew)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this._serverStorageProxy.addPlayfieldItemConfigIdViewed(_loc1_.configObj.id);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             _loc1_.isItemNew = false;
                                             if(!_loc3_)
                                             {
                                                addr00e3:
                                                this._gridTemplate.itemList.selectedIndex = this._openItemIndex;
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   this.pushTemplateByGroupName(SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type,_loc1_);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr0130:
                                                      this.addViewEventListener(_loc1_);
                                                   }
                                                }
                                             }
                                             §§goto(addr0136);
                                          }
                                       }
                                       §§goto(addr0130);
                                    }
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0136);
                  }
                  §§goto(addr0051);
               }
               §§goto(addr004d);
            }
            addr0136:
            return;
         }
         §§goto(addr0029);
      }
      
      private function handleSideMenuBack(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._currentViewStack.length > 1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0031:
                  this.popTemplate();
               }
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function handleBack(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.popTemplate();
         }
      }
      
      private function handleClose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            sendNotification(ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST);
         }
      }
      
      private function addViewEventListener(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this._currentViewStack);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().length > 1)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr003d:
                     §§push(this._currentViewStack);
                     if(_loc2_)
                     {
                        §§push(this._currentViewStack);
                        if(!_loc3_)
                        {
                           §§push(§§pop().length - 1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop()[§§pop()].addEventListener("left",this.handleLeftClick);
                              if(_loc2_ || Boolean(param1))
                              {
                                 §§push(this._currentViewStack);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(this._currentViewStack);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§push(§§pop().length - 1);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop()[§§pop()].addEventListener("right",this.handleRightClick);
                                          if(!_loc3_)
                                          {
                                             addr00c1:
                                             §§push(this._currentViewStack);
                                             if(!_loc3_)
                                             {
                                                §§push(this._currentViewStack);
                                                if(!(_loc3_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop().length - 1);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr00eb:
                                                      §§pop()[§§pop()].addEventListener("buildNow",this.handleBuildNow);
                                                      if(_loc2_ || Boolean(param1))
                                                      {
                                                         §§push(this._currentViewStack);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§push(this._currentViewStack);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr0134:
                                                               §§push(§§pop().length - 1);
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop()[§§pop()].center.centerItem.addEventListener("permissionFeatureClick",this.handleFeatureClick);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(this._currentViewStack);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0167:
                                                                        §§push(this._currentViewStack);
                                                                        if(!(_loc3_ && Boolean(param1)))
                                                                        {
                                                                           §§push(§§pop().length - 1);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§pop()[§§pop()].addEventListener("effectFeatureClick",this.handleFeatureClick);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(this._currentViewStack);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this._currentViewStack);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       addr01b5:
                                                                                       §§push(§§pop().length - 1);
                                                                                       if(_loc2_ || Boolean(param1))
                                                                                       {
                                                                                          addr01c5:
                                                                                          §§pop()[§§pop()].addEventListener("restrictionFeatureClick",this.handleFeatureClick);
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             §§push(this._currentViewStack);
                                                                                             if(_loc2_ || Boolean(param1))
                                                                                             {
                                                                                                §§push(this._currentViewStack);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01fa:
                                                                                                   §§push(§§pop().length - 1);
                                                                                                   if(!(_loc3_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§goto(addr020a);
                                                                                                   }
                                                                                                   §§goto(addr0235);
                                                                                                }
                                                                                                §§goto(addr0232);
                                                                                             }
                                                                                             §§goto(addr022e);
                                                                                          }
                                                                                          §§goto(addr0250);
                                                                                       }
                                                                                       addr020a:
                                                                                       §§pop()[§§pop()].addEventListener("residentFeatureClick",this.handleFeatureClick);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr0235:
                                                                                          this._currentViewStack[this._currentViewStack.length - 1].addEventListener("securitygradeFeatureClick",this.handleFeatureClick);
                                                                                          addr0232:
                                                                                          addr022e:
                                                                                          addr022a:
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr0250:
                                                                                             this.updateBlueprintVoinTemplate(param1);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0256);
                                                                                    }
                                                                                    §§goto(addr0232);
                                                                                 }
                                                                                 §§goto(addr022e);
                                                                              }
                                                                              §§goto(addr0256);
                                                                           }
                                                                           §§goto(addr020a);
                                                                        }
                                                                        §§goto(addr01b5);
                                                                     }
                                                                     §§goto(addr022e);
                                                                  }
                                                                  §§goto(addr0250);
                                                               }
                                                               §§goto(addr0235);
                                                            }
                                                            §§goto(addr01fa);
                                                         }
                                                         §§goto(addr0167);
                                                      }
                                                      §§goto(addr022a);
                                                   }
                                                   §§goto(addr020a);
                                                }
                                                §§goto(addr01b5);
                                             }
                                             §§goto(addr0167);
                                          }
                                          §§goto(addr0256);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr0134);
                                 }
                                 §§goto(addr0167);
                              }
                              §§goto(addr0250);
                           }
                           §§goto(addr01c5);
                        }
                        §§goto(addr01b5);
                     }
                     §§goto(addr022e);
                  }
                  §§goto(addr00c1);
               }
               addr0256:
               return;
            }
            §§goto(addr022e);
         }
         §§goto(addr003d);
      }
      
      private function handleShowDetailInfo(param1:ItemClickEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(param1.item == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr002f);
               }
            }
            var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(_loc4_)
            {
               _loc2_.playButtonClick();
               if(_loc4_)
               {
                  if(BlueprintVo(param1.item).isItemNew)
                  {
                     if(_loc4_)
                     {
                        this._serverStorageProxy.addPlayfieldItemConfigIdViewed(BlueprintVo(param1.item).configObj.id);
                        if(!(_loc3_ && _loc3_))
                        {
                           BlueprintVo(param1.item).isItemNew = false;
                           if(_loc4_ || _loc3_)
                           {
                              addr00ba:
                              facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 this.pushTemplateByGroupName(SideMenueArchCategoryVO(this.component.sideMenuComponent.selectedItem).type,param1.target.data);
                                 addr00d1:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.addViewEventListener(param1.target.data);
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr00d1);
               }
            }
            §§goto(addr00ba);
         }
         addr002f:
      }
      
      private function getPossibleTemplateClass(param1:String, param2:BlueprintVo, param3:Boolean = false) : Class
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc4_:Class = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         §§push(param1);
         loop0:
         while(true)
         {
            var _loc11_:* = §§pop();
            if(!_loc14_)
            {
               §§push(BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL);
               if(_loc15_)
               {
                  §§push(_loc11_);
                  if(_loc15_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc15_ || Boolean(param1))
                        {
                           addr060a:
                           §§push(0);
                           if(_loc14_ && param3)
                           {
                           }
                        }
                        else
                        {
                           addr06f2:
                           §§push(4);
                           if(_loc15_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(BlueprintGroupConstants.BLUEPRINT_PRODUCTION);
                        if(_loc15_)
                        {
                           §§push(_loc11_);
                           if(!(_loc14_ && param3))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc14_ && Boolean(param2)))
                                 {
                                    §§push(1);
                                    if(_loc15_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0724:
                                    §§push(5);
                                    if(_loc15_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(BlueprintGroupConstants.BLUEPRINT_SHOP);
                                 if(_loc15_)
                                 {
                                    addr0664:
                                    §§push(_loc11_);
                                    if(!_loc14_)
                                    {
                                       addr066c:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§push(2);
                                             if(_loc14_ && Boolean(param1))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr06f2);
                                          }
                                       }
                                       else
                                       {
                                          §§push(BlueprintGroupConstants.BLUEPRINT_POWERPLANT);
                                          if(_loc15_ || Boolean(param2))
                                          {
                                             §§push(_loc11_);
                                             if(!(_loc14_ && param3))
                                             {
                                                addr06ae:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(3);
                                                      if(_loc15_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0724);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(BlueprintGroupConstants.BLUEPRINT_DECORATION);
                                                   if(_loc15_)
                                                   {
                                                      addr06d8:
                                                      §§push(_loc11_);
                                                      if(!_loc14_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc14_ && param3))
                                                            {
                                                               §§goto(addr06f2);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0724);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(BlueprintGroupConstants.BLUEPRINT_GROUNDS);
                                                            if(_loc15_ || param3)
                                                            {
                                                               addr0712:
                                                               §§push(_loc11_);
                                                               if(!_loc14_)
                                                               {
                                                                  addr071a:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§goto(addr0724);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0747:
                                                                        §§push(6);
                                                                        if(_loc15_)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr075f:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_RESIDENTIAL_SELECTED);
                                                                           if(!(_loc14_ && Boolean(param2)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc14_ && Boolean(param2))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc14_)
                                                                           {
                                                                              _loc4_ = ArchitectTemplate_Residential;
                                                                              if(!(_loc14_ && Boolean(param2)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           break;
                                                                        case 1:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED);
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              _loc4_ = ArchitectTemplate_Production;
                                                                              if(!(_loc14_ && Boolean(param2)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr00c8:
                                                                              _loc4_ = ArchitectTemplate_Commercial;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr00f2:
                                                                              _loc4_ = ArchitectTemplate_Powerplant;
                                                                              if(!(_loc14_ && Boolean(param2)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr011c:
                                                                              _loc4_ = ArchitectTemplate_Decoration;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr0146:
                                                                              _loc4_ = ArchitectTemplate_Ground;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr055d:
                                                                              §§push(_loc8_);
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr0565:
                                                                                 §§push(§§pop());
                                                                                 if(_loc15_ || param3)
                                                                                 {
                                                                                    addr0574:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          addr0586:
                                                                                          _loc4_ = ArchitectTemplate_SecurityBuilding;
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc15_ || Boolean(param1))
                                                                                       {
                                                                                          addr05a2:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr05ac:
                                                                                                _loc4_ = ArchitectTemplate_Academy;
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr05ba:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                _loc4_ = ArchitectTemplate_Special;
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          addr05be:
                                                                                          _loc4_ = ArchitectTemplate_MysteryBuilding;
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr05ba);
                                                                                    }
                                                                                    §§goto(addr05be);
                                                                                 }
                                                                              }
                                                                              §§goto(addr05a2);
                                                                           }
                                                                           addr0789:
                                                                           sendNotification(_loc5_);
                                                                           break loop0;
                                                                        case 2:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED);
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr00c8);
                                                                        case 3:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED);
                                                                           if(_loc15_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr00f2);
                                                                        case 4:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr011c);
                                                                        case 5:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTURAL_DETAIL_GROUND_SELECTED);
                                                                           if(_loc15_ || Boolean(param2))
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr0146);
                                                                        case 6:
                                                                           §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED);
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc14_ && Boolean(this)))
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc14_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc15_ || Boolean(param1))
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(false);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(false);
                                                                                                if(!(_loc14_ && Boolean(param1)))
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(_loc15_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr01d8:
                                                                                                         _loc10_ = §§pop();
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc11_ = 0;
                                                                                                            if(!(_loc14_ && Boolean(param1)))
                                                                                                            {
                                                                                                               var _loc12_:* = param2.configObj.tagIds;
                                                                                                               if(_loc14_ && Boolean(this))
                                                                                                               {
                                                                                                               }
                                                                                                               loop1:
                                                                                                               for each(_loc6_ in _loc12_)
                                                                                                               {
                                                                                                                  if(!(_loc14_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     §§push(ConfigTagDTO(this._gameConfigProxy.config.tags[_loc6_]).tagName);
                                                                                                                     loop2:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        if(_loc15_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                                                           if(!(_loc14_ && param3))
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              if(_loc15_ || param3)
                                                                                                                              {
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc14_ && Boolean(param1))
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr03cd:
                                                                                                                                       §§push(2);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(ServerTagConstants.SECURITY_DEVICE);
                                                                                                                                    if(_loc15_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       if(!(_loc14_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                addr0394:
                                                                                                                                                §§push(1);
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr03cd);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(ServerTagConstants.SCHOOL);
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(_loc15_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   addr03bb:
                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc14_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr03cd);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr0437:
                                                                                                                                                         §§push(4);
                                                                                                                                                         if(_loc14_ && param3)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(ServerTagConstants.BUILDING);
                                                                                                                                                      if(_loc15_ || param3)
                                                                                                                                                      {
                                                                                                                                                         addr03ec:
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(3);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0437);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(ServerTagConstants.MYSTERY);
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(!(_loc14_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr042d:
                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0437);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0456:
                                                                                                                                                                           §§push(5);
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr046e:
                                                                                                                                                                        switch(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           case 0:
                                                                                                                                                                              §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_FIREDEPARTMENT_SELECTED);
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop2;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr02c8:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc15_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop2;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                              if(_loc15_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           case 1:
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                                                                 if(_loc14_ && Boolean(param1))
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr027d:
                                                                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           case 2:
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              if(_loc14_ && Boolean(param2))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr027d);
                                                                                                                                                                              break;
                                                                                                                                                                           case 3:
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              if(!(_loc15_ || Boolean(param2)))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           case 4:
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              break;
                                                                                                                                                                           case 5:
                                                                                                                                                                              §§push(VirtualTaskNotificationInterest.ARCHITECTURAL_BOOK_CINEMA_SELECTED);
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr02c8);
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           default:
                                                                                                                                                                              continue loop1;
                                                                                                                                                                        }
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        if(_loc14_ && Boolean(param2))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        continue loop1;
                                                                                                                                                                     }
                                                                                                                                                                     addr0452:
                                                                                                                                                                     addr0450:
                                                                                                                                                                     if(ServerTagConstants.CINEMA === _loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0456);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(6);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr046e);
                                                                                                                                                                     §§goto(addr0456);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0452);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0450);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr046e);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr042d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0450);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr046e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr042d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03ec);
                                                                                                                                          }
                                                                                                                                          §§goto(addr046e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03bb);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0450);
                                                                                                                                 }
                                                                                                                                 §§goto(addr046e);
                                                                                                                              }
                                                                                                                              §§goto(addr042d);
                                                                                                                           }
                                                                                                                           §§goto(addr03ec);
                                                                                                                        }
                                                                                                                        §§goto(addr0394);
                                                                                                                     }
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     if(_loc14_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc15_ || Boolean(param2))
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     var _temp_55:* = §§pop();
                                                                                                                     §§push(_temp_55);
                                                                                                                     §§push(_temp_55);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc14_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 addr04d2:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc15_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!(_loc14_ && param3))
                                                                                                                                    {
                                                                                                                                       addr04f1:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             addr04fb:
                                                                                                                                             addr0508:
                                                                                                                                             §§push(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_HYDRANT_SELECTED);
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc4_ = ArchitectTemplate_SecurityDevice;
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr0586);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(_loc15_ || Boolean(param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc14_ && param3))
                                                                                                                                             {
                                                                                                                                                addr053b:
                                                                                                                                                var _temp_61:* = §§pop();
                                                                                                                                                addr053c:
                                                                                                                                                §§push(_temp_61);
                                                                                                                                                if(_temp_61)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc14_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      addr054e:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!(_loc14_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr055d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05ac);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0565);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0574);
                                                                                                                                             }
                                                                                                                                             §§goto(addr05ba);
                                                                                                                                          }
                                                                                                                                          §§goto(addr053b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr05ac);
                                                                                                                                    }
                                                                                                                                    §§goto(addr054e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04f1);
                                                                                                                              }
                                                                                                                              §§goto(addr0586);
                                                                                                                           }
                                                                                                                           §§goto(addr053b);
                                                                                                                        }
                                                                                                                        §§goto(addr04f1);
                                                                                                                     }
                                                                                                                     §§goto(addr053c);
                                                                                                                  }
                                                                                                                  §§goto(addr054e);
                                                                                                               }
                                                                                                               §§goto(addr0574);
                                                                                                            }
                                                                                                            §§goto(addr04fb);
                                                                                                         }
                                                                                                         §§goto(addr055d);
                                                                                                      }
                                                                                                      §§goto(addr054e);
                                                                                                   }
                                                                                                   §§goto(addr055d);
                                                                                                }
                                                                                                §§goto(addr01d8);
                                                                                             }
                                                                                             §§goto(addr04d2);
                                                                                          }
                                                                                          §§goto(addr05a2);
                                                                                       }
                                                                                       §§goto(addr055d);
                                                                                    }
                                                                                    §§goto(addr05ba);
                                                                                 }
                                                                                 §§goto(addr0586);
                                                                              }
                                                                           }
                                                                           §§goto(addr0508);
                                                                     }
                                                                     if(!param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr0789);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0743:
                                                                     addr0741:
                                                                     if(BlueprintGroupConstants.BLUEPRINT_SPECIAL === _loc11_)
                                                                     {
                                                                        §§goto(addr0747);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(7);
                                                                     }
                                                                     §§goto(addr075f);
                                                                  }
                                                               }
                                                               §§goto(addr0743);
                                                            }
                                                            §§goto(addr0741);
                                                         }
                                                         §§goto(addr075f);
                                                      }
                                                      §§goto(addr071a);
                                                   }
                                                   §§goto(addr0712);
                                                }
                                                §§goto(addr075f);
                                             }
                                             §§goto(addr071a);
                                          }
                                          §§goto(addr0741);
                                       }
                                       §§goto(addr075f);
                                    }
                                    §§goto(addr06ae);
                                 }
                                 §§goto(addr0741);
                              }
                              §§goto(addr075f);
                           }
                           §§goto(addr066c);
                        }
                        §§goto(addr0664);
                     }
                     §§goto(addr075f);
                  }
                  §§goto(addr06ae);
               }
               §§goto(addr06d8);
            }
            §§goto(addr060a);
         }
         return _loc4_;
      }
      
      private function pushTemplateByGroupName(param1:String, param2:BlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:Class = this.getPossibleTemplateClass(param1,param2,true);
         if(!(_loc4_ && Boolean(param1)))
         {
            this.templateDict[_loc3_.NAME] = new _loc3_();
            if(_loc5_)
            {
               addr0050:
               this.pushTemplate(this.templateDict[_loc3_.NAME]);
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function handleBuildNow(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:BlueprintVo = this._currentViewStack[this._currentViewStack.length - 1].data;
         if(!(_loc4_ && Boolean(this)))
         {
            if(!_loc2_.userCanAfford)
            {
               if(_loc3_ || Boolean(this))
               {
                  if(_loc2_.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                  {
                     if(!_loc4_)
                     {
                        sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
                     if(_loc3_ || Boolean(param1))
                     {
                     }
                  }
               }
            }
            else
            {
               this._architecturalBookProxy.blueprintSelected(_loc2_);
            }
         }
      }
      
      private function handleLeftClick(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this._gridTemplate);
            if(!_loc5_)
            {
               if(§§pop().itemList.selectedIndex > 0)
               {
                  if(_loc4_)
                  {
                     this._soundProxy.playButtonClick();
                     if(!(_loc5_ && _loc2_))
                     {
                        var _loc2_:* = this._gridTemplate.itemList;
                        var _loc3_:* = _loc2_.selectedIndex - 1;
                        addr005c:
                        addr0058:
                        if(_loc4_ || Boolean(this))
                        {
                           _loc2_.selectedIndex = _loc3_;
                        }
                        if(!_loc5_)
                        {
                           addr0090:
                           this.checkTemplate(this._gridTemplate.itemList.selectedItem as BlueprintVo);
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr0090);
               }
               addr00a3:
               return;
            }
            §§goto(addr005c);
         }
         §§goto(addr0058);
      }
      
      private function handleRightClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this._gridTemplate);
            if(!_loc4_)
            {
               if(§§pop().itemList.selectedIndex < this._gridTemplate.itemList.dataProvider.length - 1)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this._soundProxy.playButtonClick();
                     if(!(_loc4_ && _loc3_))
                     {
                        var _loc2_:* = this._gridTemplate.itemList;
                        var _loc3_:* = _loc2_.selectedIndex + 1;
                        addr0078:
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc2_.selectedIndex = _loc3_;
                        }
                        if(!_loc4_)
                        {
                           addr00ac:
                           this.checkTemplate(this._gridTemplate.itemList.selectedItem as BlueprintVo);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00ac);
                  }
               }
               addr00bf:
               return;
            }
            §§goto(addr0078);
         }
         §§goto(addr00ac);
      }
      
      private function handleFeatureClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = {};
         §§push(ApplicationNotificationConstants.OPEN_FEATURESCREEN);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = param1.type;
         if(_loc6_)
         {
            §§push("permissionFeatureClick");
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_)
                  {
                     addr014c:
                     §§push(0);
                     if(_loc6_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr0175:
                     §§push(1);
                     if(_loc5_ && Boolean(_loc2_))
                     {
                     }
                  }
               }
               else
               {
                  §§push("effectFeatureClick");
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr0175);
                        }
                        else
                        {
                           addr0200:
                           §§push(4);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                           }
                        }
                        §§goto(addr0220);
                     }
                     else
                     {
                        §§push("restrictionFeatureClick");
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01d7:
                                 §§push(3);
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("residentFeatureClick");
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr01cb:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr01d7);
                                    }
                                    else
                                    {
                                       §§goto(addr0200);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr01fa);
                                 }
                                 §§goto(addr0200);
                              }
                              addr01fa:
                              if("securitygradeFeatureClick" === _loc4_)
                              {
                                 §§goto(addr0200);
                              }
                              else
                              {
                                 §§push(5);
                              }
                              §§goto(addr0220);
                           }
                           §§goto(addr0220);
                        }
                        §§goto(addr01cb);
                     }
                  }
                  §§goto(addr01fa);
               }
               addr0220:
               switch(§§pop())
               {
                  case 0:
                     _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
                     if(!_loc5_)
                     {
                        _loc2_.quest = false;
                        if(!_loc6_)
                        {
                           addr0099:
                           _loc2_.quest = false;
                           if(_loc5_ && Boolean(this))
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        addr00f4:
                        §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                        if(_loc6_)
                        {
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                        if(_loc6_ || Boolean(this))
                        {
                        }
                     }
                     addr023f:
                     sendNotification(_loc3_,_loc2_);
                     break;
                  case 1:
                     _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
                     if(_loc6_)
                     {
                        _loc2_.quest = false;
                        if(!(_loc6_ || Boolean(param1)))
                        {
                           addr00c1:
                           _loc2_.quest = false;
                           if(_loc5_ && Boolean(this))
                           {
                           }
                        }
                     }
                     §§goto(addr023f);
                  case 2:
                     _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
                     if(_loc6_)
                     {
                        §§goto(addr0099);
                     }
                     else
                     {
                        addr00e9:
                        _loc2_.quest = false;
                        if(!_loc5_)
                        {
                           §§goto(addr00f4);
                        }
                     }
                     §§goto(addr023f);
                  case 3:
                     _loc2_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
                     if(_loc6_)
                     {
                        §§goto(addr00c1);
                     }
                     §§goto(addr023f);
                  case 4:
                     _loc2_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES;
                     if(_loc6_)
                     {
                        §§goto(addr00e9);
                     }
                     §§goto(addr00f4);
                  default:
                     §§goto(addr023f);
               }
               return;
            }
            §§goto(addr01fa);
         }
         §§goto(addr014c);
      }
      
      private function updateBlueprintVoinTemplate(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(this._serverStorageProxy);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(param1.configObj);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(§§pop().id);
                  if(!_loc5_)
                  {
                     §§push(§§pop().isPlayfieldItemConfigIdViewed(§§pop()));
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        if(!§§pop())
                        {
                           if(_loc4_ || Boolean(param1))
                           {
                              addr0079:
                              this._serverStorageProxy.addPlayfieldItemConfigIdViewed(param1.configObj.id);
                              addr0077:
                              addr0073:
                              if(!_loc5_)
                              {
                                 param1.isItemNew = false;
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED);
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       addr00ae:
                                       this._architecturalBookProxy.verifiedBlueprintVo.bluePrintVO = param1;
                                       if(!_loc5_)
                                       {
                                          addr00bf:
                                          §§push(this._currentViewStack);
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             §§push(this._currentViewStack);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().length - 1);
                                                if(!_loc5_)
                                                {
                                                   §§pop()[§§pop()].center.scrollLeft.visible = true;
                                                   if(_loc4_ || Boolean(_loc3_))
                                                   {
                                                      addr00ff:
                                                      §§push(this._currentViewStack);
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         addr0111:
                                                         §§push(this._currentViewStack);
                                                         if(_loc4_)
                                                         {
                                                            addr011b:
                                                            §§push(§§pop().length - 1);
                                                            if(!(_loc5_ && Boolean(_loc2_)))
                                                            {
                                                               §§pop()[§§pop()].center.scrollRight.visible = true;
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr013f);
                                                               }
                                                               §§goto(addr018a);
                                                            }
                                                            §§goto(addr0175);
                                                         }
                                                         §§goto(addr0172);
                                                      }
                                                      §§goto(addr016e);
                                                   }
                                                   addr013f:
                                                   §§goto(addr0158);
                                                }
                                                §§goto(addr0175);
                                             }
                                             §§goto(addr011b);
                                          }
                                          §§goto(addr0111);
                                       }
                                       §§goto(addr01a9);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr01a9);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr00ae);
                     }
                     addr0158:
                     if(this.fillSubData(this._currentViewStack[this._currentViewStack.length - 1].name,param1))
                     {
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           addr0175:
                           this._currentViewStack[this._currentViewStack.length - 1].setData(this._architecturalBookProxy.verifiedBlueprintVo);
                           addr0172:
                           addr016e:
                           if(_loc4_)
                           {
                              addr018a:
                              §§push(0);
                              if(_loc4_ || Boolean(_loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr01ab:
                                    _loc3_ = 0;
                                    addr01a9:
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_ && Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= this._gridTemplate.itemList.dataProvider.length)
                                       {
                                          addr03bb:
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             addr023c:
                                             §§push(_loc2_);
                                             break loop0;
                                          }
                                          §§push(this._currentViewStack);
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             addr03cd:
                                             §§push(this._currentViewStack);
                                             if(!(_loc5_ && Boolean(param1)))
                                             {
                                                addr03df:
                                                §§push(§§pop().length - 1);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   addr03f0:
                                                   §§pop()[§§pop()].center.scrollLeft.visible = false;
                                                   if(_loc5_ && Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0478:
                                                   §§pop()[§§pop()].center.scrollRight.visible = true;
                                                }
                                                §§goto(addr0485);
                                             }
                                             addr0433:
                                             §§push(§§pop().length - 1);
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                addr0452:
                                                §§pop()[§§pop()].center.scrollLeft.visible = true;
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   addr0475:
                                                   addr0471:
                                                   addr046d:
                                                   §§goto(addr0478);
                                                   §§push(this._currentViewStack);
                                                   §§push(this._currentViewStack.length - 1);
                                                }
                                                §§goto(addr0485);
                                             }
                                             §§goto(addr0478);
                                          }
                                          else
                                          {
                                             addr0421:
                                             §§push(this._currentViewStack);
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                §§goto(addr0433);
                                             }
                                          }
                                          §§goto(addr0475);
                                       }
                                       else
                                       {
                                          §§push(this._gridTemplate);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             if(§§pop().itemList.dataProvider[_loc3_] == null)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc5_ && Boolean(_loc3_))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr023c);
                                                   }
                                                   §§goto(addr03bb);
                                                }
                                                addr0251:
                                                §§push(this._currentViewStack);
                                                if(_loc4_)
                                                {
                                                   §§push(this._currentViewStack);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().length - 1);
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         §§pop()[§§pop()].center.scrollLeft.visible = false;
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this._currentViewStack);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this._currentViewStack);
                                                               if(_loc4_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop().length - 1);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop()[§§pop()].center.scrollRight.visible = false;
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr031e:
                                                                     §§pop()[§§pop()].center.scrollRight.visible = false;
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this._currentViewStack);
                                                                        if(!(_loc5_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(this._currentViewStack);
                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(§§pop().length - 1);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr035e:
                                                                                 §§pop()[§§pop()].center.scrollLeft.visible = true;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr038b:
                                                                                    §§push(this._currentViewStack);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr0395:
                                                                                       §§push(this._currentViewStack);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr039f:
                                                                                          §§push(§§pop().length - 1);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr03a8:
                                                                                             §§pop()[§§pop()].center.scrollRight.visible = true;
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr03bb);
                                                                                             }
                                                                                             §§goto(addr0485);
                                                                                          }
                                                                                          §§goto(addr03f0);
                                                                                       }
                                                                                       §§goto(addr03df);
                                                                                    }
                                                                                    §§goto(addr03cd);
                                                                                 }
                                                                                 §§goto(addr0485);
                                                                              }
                                                                              §§goto(addr0452);
                                                                           }
                                                                           §§goto(addr0433);
                                                                        }
                                                                        §§goto(addr0395);
                                                                     }
                                                                  }
                                                                  §§goto(addr0485);
                                                               }
                                                               §§goto(addr039f);
                                                            }
                                                            §§goto(addr0421);
                                                         }
                                                         else
                                                         {
                                                            addr02e9:
                                                            §§push(this._currentViewStack);
                                                            if(!(_loc5_ && Boolean(param1)))
                                                            {
                                                               §§push(this._currentViewStack);
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop().length - 1);
                                                                  if(_loc4_ || Boolean(_loc3_))
                                                                  {
                                                                     §§goto(addr031e);
                                                                  }
                                                                  §§goto(addr03a8);
                                                               }
                                                               §§goto(addr03df);
                                                            }
                                                         }
                                                         §§goto(addr0471);
                                                      }
                                                      §§goto(addr035e);
                                                   }
                                                   §§goto(addr039f);
                                                }
                                                §§goto(addr0471);
                                             }
                                             else
                                             {
                                                _loc3_++;
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr0485);
                                          }
                                          addr0379:
                                          if(§§pop().itemList.selectedIndex == 0)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr038b);
                                             }
                                             §§goto(addr03bb);
                                          }
                                          else
                                          {
                                             §§push(this._currentViewStack);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                §§goto(addr0421);
                                             }
                                          }
                                       }
                                       §§goto(addr0471);
                                    }
                                 }
                                 if(§§pop() == 1)
                                 {
                                    if(_loc4_ || Boolean(_loc3_))
                                    {
                                       §§goto(addr0251);
                                    }
                                    §§goto(addr038b);
                                 }
                                 else
                                 {
                                    §§push(this._gridTemplate);
                                    if(!_loc5_)
                                    {
                                       if(§§pop().itemList.selectedIndex == _loc2_ - 1)
                                       {
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§goto(addr02e9);
                                          }
                                          §§goto(addr046d);
                                       }
                                       else
                                       {
                                          §§goto(addr0379);
                                          §§push(this._gridTemplate);
                                       }
                                       §§goto(addr0471);
                                    }
                                    §§goto(addr0379);
                                 }
                              }
                              §§goto(addr01ab);
                           }
                           §§goto(addr01a9);
                        }
                        §§goto(addr018a);
                     }
                     addr0485:
                     return;
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0077);
            }
            §§goto(addr0073);
         }
         §§goto(addr013f);
      }
      
      public function fillSubData(param1:String, param2:BlueprintVo) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
            if(_loc5_)
            {
               addr0036:
               this._architecturalBookProxy.verifiedBlueprintVo.bluePrintVO = param2;
            }
            var _loc3_:* = param1;
            if(!(_loc4_ && Boolean(param2)))
            {
               §§push(ArchitectTemplate_Ground.NAME);
               if(!_loc4_)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr05d5:
                           §§push(2);
                           if(_loc4_ && Boolean(param2))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ArchitectTemplate_Decoration.NAME);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && Boolean(param2)))
                                 {
                                    §§push(1);
                                    if(_loc4_ && Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0715:
                                    §§push(8);
                                    if(_loc4_ && Boolean(_loc3_))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ArchitectTemplate_Powerplant.NAME);
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc4_ && Boolean(param2)))
                                          {
                                             §§goto(addr05d5);
                                          }
                                          else
                                          {
                                             §§goto(addr0715);
                                          }
                                       }
                                       else
                                       {
                                          §§push(ArchitectTemplate_Commercial.NAME);
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             §§push(_loc3_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(3);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0745:
                                                      §§push(9);
                                                      if(_loc4_ && Boolean(_loc3_))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ArchitectTemplate_Residential.NAME);
                                                   if(!_loc4_)
                                                   {
                                                      addr0624:
                                                      §§push(_loc3_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                               §§push(4);
                                                               if(_loc4_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr06a5:
                                                               §§push(6);
                                                               if(_loc4_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ArchitectTemplate_Production.NAME);
                                                            if(_loc5_)
                                                            {
                                                               addr0654:
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ && Boolean(param2)))
                                                               {
                                                                  addr0663:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        addr0675:
                                                                        §§push(5);
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0745);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ArchitectTemplate_Special.NAME);
                                                                     if(_loc5_ || Boolean(param2))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr069b:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr06a5);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr0745);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(ArchitectTemplate_SecurityDevice.NAME);
                                                                              if(_loc5_ || Boolean(this))
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    addr06d3:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(7);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr076e:
                                                                                          §§push(10);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr078e);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(ArchitectTemplate_SecurityBuilding.NAME);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr06fc:
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr0715);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0745);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(ArchitectTemplate_Academy.NAME);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0734:
                                                                                                   §§push(_loc3_);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr073b:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr0745);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr076e);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr076a);
                                                                                                      }
                                                                                                      §§goto(addr076e);
                                                                                                   }
                                                                                                   addr076a:
                                                                                                   §§goto(addr0769);
                                                                                                }
                                                                                                addr0769:
                                                                                                if(ArchitectTemplate_MysteryBuilding.NAME === _loc3_)
                                                                                                {
                                                                                                   §§goto(addr076e);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(11);
                                                                                                }
                                                                                                §§goto(addr078e);
                                                                                             }
                                                                                             §§goto(addr078e);
                                                                                          }
                                                                                          §§goto(addr073b);
                                                                                       }
                                                                                       §§goto(addr0734);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr073b);
                                                                              }
                                                                              §§goto(addr0734);
                                                                           }
                                                                           §§goto(addr078e);
                                                                        }
                                                                        §§goto(addr06d3);
                                                                     }
                                                                     §§goto(addr06fc);
                                                                  }
                                                                  §§goto(addr078e);
                                                               }
                                                               §§goto(addr069b);
                                                            }
                                                            §§goto(addr06fc);
                                                         }
                                                         §§goto(addr078e);
                                                      }
                                                      §§goto(addr06d3);
                                                   }
                                                   §§goto(addr0734);
                                                }
                                                §§goto(addr078e);
                                             }
                                             §§goto(addr0663);
                                          }
                                          §§goto(addr0769);
                                       }
                                       §§goto(addr078e);
                                    }
                                    §§goto(addr0663);
                                 }
                                 §§goto(addr0654);
                              }
                              §§goto(addr078e);
                           }
                           §§goto(addr0663);
                        }
                        §§goto(addr0624);
                     }
                     addr078e:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           §§push(this._architecturalBookProxy);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§pop().subData_RefillCost(param2);
                              if(_loc4_ && Boolean(_loc3_))
                              {
                                 break;
                              }
                              §§push(this._architecturalBookProxy);
                              if(_loc4_)
                              {
                                 addr024b:
                                 §§pop().subData_RealCurrencyAmount();
                                 if(_loc5_)
                                 {
                                 }
                                 break;
                              }
                              §§pop().subData_RefillEffects(param2);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(this._architecturalBookProxy);
                                 if(!_loc4_)
                                 {
                                    §§pop().subData_RealCurrencyAmount();
                                    if(!(_loc4_ && Boolean(param2)))
                                    {
                                       break;
                                    }
                                    addr0388:
                                    §§push(this._architecturalBookProxy);
                                    if(_loc5_)
                                    {
                                       §§pop().subData_RefillEffects(param2);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       addr039d:
                                       §§push(this._architecturalBookProxy);
                                       if(_loc5_)
                                       {
                                          §§pop().subData_RefillDescription(param2);
                                          addr03a7:
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr03c8:
                                             §§push(this._architecturalBookProxy);
                                             if(_loc5_)
                                             {
                                                addr03d2:
                                                §§pop().subData_RefillSecuritygrade(param2);
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   break;
                                                }
                                                addr0488:
                                                §§push(this._architecturalBookProxy);
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr049a:
                                                   §§pop().subData_RefillEffects(param2);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      addr04ad:
                                                      §§push(this._architecturalBookProxy);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         addr04bf:
                                                         §§pop().subData_RefillMaterial(param2);
                                                         if(!(_loc5_ || Boolean(this)))
                                                         {
                                                            break;
                                                         }
                                                         addr04d2:
                                                         §§push(this._architecturalBookProxy);
                                                         if(_loc5_)
                                                         {
                                                            addr04dc:
                                                            §§pop().subData_RefillDescription(param2);
                                                            if(_loc5_ || Boolean(param1))
                                                            {
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      addr0515:
                                                      §§pop().subData_RefillEffects(param2);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr04d2);
                                                }
                                                §§goto(addr0515);
                                             }
                                             §§goto(addr049a);
                                          }
                                          §§goto(addr04d2);
                                       }
                                       else
                                       {
                                          addr0411:
                                          §§pop().subData_RefillEffects(param2);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§push(this._architecturalBookProxy);
                                             if(!_loc4_)
                                             {
                                                addr042e:
                                                §§pop().subData_RefillMaterial(param2);
                                                if(_loc4_ && Boolean(this))
                                                {
                                                   break;
                                                }
                                                addr0441:
                                                §§push(this._architecturalBookProxy);
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   addr0453:
                                                   §§pop().subData_RefillSecuritygrade(param2);
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr0511:
                                                   §§push(this._architecturalBookProxy);
                                                }
                                                else
                                                {
                                                   §§goto(addr049a);
                                                }
                                                §§goto(addr0515);
                                             }
                                             §§goto(addr0453);
                                          }
                                          else
                                          {
                                             §§goto(addr0488);
                                          }
                                       }
                                       §§goto(addr0488);
                                    }
                                    §§goto(addr0515);
                                 }
                                 else
                                 {
                                    addr00d0:
                                    §§pop().subData_RefillEffects(param2);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§push(this._architecturalBookProxy);
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          §§pop().subData_RefillMaterial(param2);
                                          if(!(_loc5_ || Boolean(param2)))
                                          {
                                             break;
                                          }
                                          §§push(this._architecturalBookProxy);
                                          if(!_loc4_)
                                          {
                                             §§pop().subData_RealCurrencyAmount();
                                             if(_loc5_ || Boolean(param2))
                                             {
                                                break;
                                             }
                                             addr031c:
                                             §§push(this._architecturalBookProxy);
                                             if(_loc5_ || Boolean(this))
                                             {
                                                addr032e:
                                                §§pop().subData_RefillEffects(param2);
                                                if(!(_loc5_ || Boolean(param2)))
                                                {
                                                   break;
                                                }
                                                §§push(this._architecturalBookProxy);
                                                if(_loc5_)
                                                {
                                                   §§pop().subData_RefillDescription(param2);
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr0488);
                                                }
                                                §§goto(addr04bf);
                                             }
                                             else
                                             {
                                                §§goto(addr03d2);
                                             }
                                             §§goto(addr0488);
                                          }
                                          else
                                          {
                                             §§goto(addr0453);
                                          }
                                       }
                                       else
                                       {
                                          addr018a:
                                          §§pop().subData_RefillOutcome(param2);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          addr0195:
                                          §§push(this._architecturalBookProxy);
                                          if(_loc5_)
                                          {
                                             §§pop().subData_RealCurrencyAmount();
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§goto(addr0441);
                                          }
                                          else
                                          {
                                             addr02d3:
                                             §§pop().subData_RefillOutcome(param2);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                addr02e6:
                                                §§push(this._architecturalBookProxy);
                                                if(!_loc4_)
                                                {
                                                   addr02f0:
                                                   §§pop().subData_RealCurrencyAmount();
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr039d);
                                                }
                                                else
                                                {
                                                   addr0475:
                                                   §§pop().subData_RefillCost(param2);
                                                   if(_loc5_ || Boolean(param2))
                                                   {
                                                      §§goto(addr0488);
                                                   }
                                                }
                                                §§goto(addr04ad);
                                             }
                                             else
                                             {
                                                §§goto(addr0388);
                                             }
                                          }
                                       }
                                       §§goto(addr0515);
                                    }
                                 }
                              }
                              else
                              {
                                 addr02c1:
                                 §§push(this._architecturalBookProxy);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§goto(addr02d3);
                                 }
                                 else
                                 {
                                    addr0506:
                                    §§pop().subData_RefillCost(param2);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr0511);
                           }
                           else
                           {
                              addr0375:
                              §§pop().subData_RefillCost(param2);
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§goto(addr0388);
                              }
                           }
                           §§goto(addr039d);
                        case 2:
                           §§push(this._architecturalBookProxy);
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              §§pop().subData_RefillCost(param2);
                              if(_loc5_)
                              {
                                 §§push(this._architecturalBookProxy);
                                 if(_loc5_)
                                 {
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr02f0);
                              }
                              §§goto(addr03c8);
                           }
                           §§goto(addr032e);
                        case 3:
                           §§push(this._architecturalBookProxy);
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              §§pop().subData_RefillCost(param2);
                              if(!_loc4_)
                              {
                                 §§push(this._architecturalBookProxy);
                                 if(!(_loc4_ && Boolean(param2)))
                                 {
                                    §§pop().subData_RefillEffects(param2);
                                    if(_loc5_)
                                    {
                                       §§push(this._architecturalBookProxy);
                                       if(_loc5_)
                                       {
                                          §§pop().subData_RefillMaterial(param2);
                                          if(_loc5_)
                                          {
                                             §§push(this._architecturalBookProxy);
                                             if(!(_loc4_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr018a);
                                             }
                                             else
                                             {
                                                §§goto(addr0375);
                                             }
                                          }
                                          §§goto(addr0195);
                                       }
                                       else
                                       {
                                          addr0289:
                                          §§pop().subData_RefillEffects(param2);
                                          if(!(_loc5_ || Boolean(param2)))
                                          {
                                             break;
                                          }
                                          §§push(this._architecturalBookProxy);
                                          if(!(_loc4_ && Boolean(param2)))
                                          {
                                             §§pop().subData_RefillMaterial(param2);
                                             if(!(_loc4_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr02c1);
                                             }
                                             §§goto(addr03c8);
                                          }
                                       }
                                       §§goto(addr049a);
                                    }
                                    §§goto(addr04d2);
                                 }
                                 §§goto(addr03a7);
                              }
                              §§goto(addr0388);
                           }
                           §§goto(addr049a);
                        case 4:
                           §§push(this._architecturalBookProxy);
                           if(_loc5_ || Boolean(param1))
                           {
                              §§pop().subData_RefillCost(param2);
                              if(!(_loc5_ || Boolean(this)))
                              {
                                 break;
                              }
                              §§push(this._architecturalBookProxy);
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§pop().subData_RefillEffects(param2);
                                 if(!_loc4_)
                                 {
                                    §§push(this._architecturalBookProxy);
                                    if(!_loc4_)
                                    {
                                       §§pop().subData_RefillMaterial(param2);
                                       if(!(_loc5_ || Boolean(_loc3_)))
                                       {
                                          break;
                                       }
                                       §§push(this._architecturalBookProxy);
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          §§pop().subData_RefillCCOutcome(param2);
                                          if(!_loc4_)
                                          {
                                             §§push(this._architecturalBookProxy);
                                             if(_loc5_)
                                             {
                                                §§pop().subData_refillResidents(param2);
                                                if(!_loc4_)
                                                {
                                                   §§push(this._architecturalBookProxy);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr024b);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0453);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr04ad);
                                                }
                                                §§goto(addr0515);
                                             }
                                             §§goto(addr04bf);
                                          }
                                          §§goto(addr0511);
                                       }
                                       else
                                       {
                                          §§goto(addr032e);
                                       }
                                    }
                                    §§goto(addr049a);
                                 }
                                 else
                                 {
                                    §§goto(addr02e6);
                                 }
                              }
                              §§goto(addr049a);
                           }
                           else
                           {
                              addr026c:
                              §§pop().subData_RefillCost(param2);
                              if(!_loc4_)
                              {
                                 §§push(this._architecturalBookProxy);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§goto(addr0289);
                                 }
                                 §§goto(addr04dc);
                              }
                           }
                           §§goto(addr04d2);
                        case 5:
                           §§push(this._architecturalBookProxy);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§goto(addr026c);
                           }
                           §§goto(addr049a);
                        case 6:
                           §§push(this._architecturalBookProxy);
                           if(!_loc4_)
                           {
                              §§pop().subData_RefillCost(param2);
                              if(!_loc4_)
                              {
                                 §§goto(addr031c);
                              }
                              else
                              {
                                 §§goto(addr03c8);
                              }
                           }
                           §§goto(addr04bf);
                        case 7:
                           §§push(this._architecturalBookProxy);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§goto(addr0375);
                           }
                           else
                           {
                              addr03f4:
                              §§pop().subData_RefillCost(param2);
                              if(_loc4_ && Boolean(param2))
                              {
                                 break;
                              }
                              §§push(this._architecturalBookProxy);
                              if(!_loc4_)
                              {
                                 §§goto(addr0411);
                              }
                           }
                           §§goto(addr04bf);
                        case 8:
                           §§push(this._architecturalBookProxy);
                           if(_loc5_)
                           {
                              §§goto(addr03f4);
                           }
                           §§goto(addr042e);
                        case 9:
                           §§push(this._architecturalBookProxy);
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              §§goto(addr0475);
                           }
                           §§goto(addr04bf);
                        case 10:
                           §§push(this._architecturalBookProxy);
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr0506);
                           }
                           §§goto(addr0515);
                     }
                     return true;
                  }
                  §§goto(addr0663);
               }
               §§goto(addr0769);
            }
            §§goto(addr0675);
         }
         §§goto(addr0036);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(!_loc2_)
            {
               this.removeListener();
               if(_loc1_)
               {
                  this.destroyGuiInfolayer();
                  if(!_loc2_)
                  {
                     addr0034:
                     sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
                  }
                  §§goto(addr003f);
               }
            }
            §§goto(addr0034);
         }
         addr003f:
      }
      
      private function checkTemplate(param1:BlueprintVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:String = this.component.sideMenuComponent.selectedItem.type;
         var _loc3_:String = this.getPossibleTemplateClass(_loc2_,param1).NAME;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(this._currentViewStack);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop().length));
               if(_loc4_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc4_ || Boolean(param1))
                        {
                           §§goto(addr008c);
                        }
                        §§goto(addr00c5);
                     }
                  }
               }
               addr008c:
               §§goto(addr007c);
            }
            addr007c:
            if(this._currentViewStack[this._currentViewStack.length - 1].name == _loc3_)
            {
               if(_loc4_)
               {
                  this.updateBlueprintVoinTemplate(param1);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     §§goto(addr00aa);
                  }
               }
               addr00e5:
               this.addViewEventListener(param1);
            }
            else
            {
               addr00c5:
               this.popTemplate();
               if(_loc4_)
               {
                  this.pushTemplateByGroupName(_loc2_,param1);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     §§goto(addr00e5);
                  }
               }
            }
            return;
         }
         addr00aa:
      }
      
      private function pushTemplate(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this._currentViewStack);
            if(!_loc2_)
            {
               if(§§pop().length)
               {
                  if(!_loc2_)
                  {
                     addr0036:
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§pop().removeElement(this._currentViewStack[this._currentViewStack.length - 1]);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr007b:
                           this._currentViewStack.push(param1);
                           §§goto(addr0077);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0099);
               }
               addr0077:
               if(!(_loc2_ && _loc2_))
               {
                  addr008f:
                  this.component.addElement(param1);
                  addr008c:
                  if(!_loc2_)
                  {
                     addr0099:
                     this.invalidateBackButton();
                  }
               }
               return;
            }
            §§goto(addr007b);
         }
         §§goto(addr0036);
      }
      
      private function popTemplate() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = undefined;
         if(_loc3_)
         {
            §§push(this._currentViewStack);
            if(_loc3_ || _loc2_)
            {
               if(§§pop().length)
               {
                  if(_loc3_ || _loc1_)
                  {
                     §§push(this._currentViewStack);
                     if(_loc3_ || _loc1_)
                     {
                        addr004f:
                        _loc1_ = §§pop().pop();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           if(_loc1_.center != null)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 _loc1_.center.centerItem.removeEventListener("permissionFeatureClick",this.handleFeatureClick);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.removeEventListener("effectFeatureClick",this.handleFeatureClick);
                                    addr0098:
                                    if(!_loc2_)
                                    {
                                       _loc1_.removeEventListener("restrictionFeatureClick",this.handleFeatureClick);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00cd:
                                          _loc1_.removeEventListener("residentFeatureClick",this.handleFeatureClick);
                                          if(!_loc2_)
                                          {
                                             addr00de:
                                             _loc1_.removeEventListener("securitygradeFeatureClick",this.handleFeatureClick);
                                             if(_loc3_)
                                             {
                                                addr00ef:
                                                _loc1_.removeEventListener("left",this.handleLeftClick);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr0109:
                                                   _loc1_.removeEventListener("right",this.handleRightClick);
                                                   if(!_loc2_)
                                                   {
                                                      _loc1_.removeEventListener("buildNow",this.handleBuildNow);
                                                      if(!_loc2_)
                                                      {
                                                         addr012c:
                                                         this.component.removeElement(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            addr0139:
                                                            this.checkSubMenuOpen(findOutType(_loc1_));
                                                         }
                                                         addr0149:
                                                         addr0159:
                                                         if(this._currentViewStack.length)
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§goto(addr016c);
                                                            }
                                                         }
                                                         §§goto(addr0186);
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                }
                                                §§goto(addr0149);
                                             }
                                             §§goto(addr0109);
                                          }
                                          §§goto(addr0139);
                                       }
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00cd);
                     }
                     §§goto(addr0159);
                  }
                  addr016c:
                  this.component.addElement(this._currentViewStack[this._currentViewStack.length - 1]);
                  if(_loc3_)
                  {
                     addr0186:
                     this.invalidateBackButton();
                  }
                  return;
               }
               §§goto(addr0149);
            }
            §§goto(addr004f);
         }
         §§goto(addr0186);
      }
      
      private function invalidateBackButton() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._currentViewStack.length <= 1)
            {
               if(_loc1_ || Boolean(this))
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().showBackButton = §§pop();
                        if(!(_loc1_ || _loc2_))
                        {
                           addr0080:
                           this.component.backButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.back");
                           addr007d:
                        }
                     }
                     else
                     {
                        addr0075:
                        §§pop().showBackButton = §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr0091);
                  }
                  else
                  {
                     addr0074:
                     §§push(true);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0091);
            }
            else
            {
               §§push(this.component);
               if(_loc1_)
               {
                  §§goto(addr0074);
               }
            }
            §§goto(addr0080);
         }
         addr0091:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PlayfieldItemPermissionDTO = null;
         var _loc3_:BlueprintVo = null;
         var _loc4_:* = param1.getName();
         if(_loc5_)
         {
            §§push(ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE);
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_ || Boolean(param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr01d2:
                        §§push(2);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED);
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01e9:
                                 §§push(3);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              §§goto(addr0201);
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    addr01c8:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr01d2);
                                       }
                                       else
                                       {
                                          §§goto(addr01e9);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr01e5);
                                    }
                                    §§goto(addr01e9);
                                 }
                                 addr01e5:
                              }
                              §§goto(addr01e3);
                           }
                        }
                        §§goto(addr01c8);
                     }
                     addr01e3:
                     if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc4_)
                     {
                        §§goto(addr01e9);
                     }
                     else
                     {
                        §§push(4);
                     }
                     §§goto(addr0201);
                  }
                  addr0201:
                  switch(§§pop())
                  {
                     case 0:
                        this.handleAddedToStage();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                        }
                        break;
                     case 1:
                     case 2:
                     case 3:
                        _loc2_ = param1.getBody() as PlayfieldItemPermissionDTO;
                        if(_loc6_ && Boolean(param1))
                        {
                           break;
                        }
                        §§push(this._currentViewStack);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           if(§§pop().length > 1)
                           {
                              if(_loc5_)
                              {
                                 §§push(this._currentViewStack);
                                 if(_loc5_)
                                 {
                                    addr007f:
                                    §§push(this._currentViewStack);
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop().length - 1);
                                       if(!_loc6_)
                                       {
                                          if(!(§§pop()[§§pop()].data is BlueprintVo))
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          addr00ae:
                                          §§push(this._currentViewStack);
                                          if(_loc6_)
                                          {
                                             addr0109:
                                             if(§§pop().length == 1)
                                             {
                                                if(!_loc6_)
                                                {
                                                   this.handleAddedToStage(null);
                                                }
                                             }
                                             break;
                                          }
                                          addr00bc:
                                          §§push(this._currentViewStack.length - 1);
                                       }
                                       _loc3_ = §§pop()[§§pop()].data;
                                       if(!_loc6_)
                                       {
                                          if(_loc2_ != null)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             addr00e8:
                                             _loc3_.permission = _loc2_;
                                             if(_loc6_ && Boolean(_loc3_))
                                             {
                                                break;
                                             }
                                          }
                                          this.updateBlueprintVoinTemplate(_loc3_);
                                          break;
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr00ae);
                           }
                           else
                           {
                              §§push(this._currentViewStack);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr007f);
                  }
                  return;
               }
               §§goto(addr01e5);
            }
            §§goto(addr01e3);
         }
         §§goto(addr01d2);
      }
      
      public function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function checkSubMenuOpen(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr0240:
                        §§push(6);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr0260);
                  }
                  else
                  {
                     §§push(BlueprintGroupConstants.BLUEPRINT_PRODUCTION);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || Boolean(this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01af:
                                 §§push(3);
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(BlueprintGroupConstants.BLUEPRINT_SHOP);
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr0159:
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(2);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0240);
                                       }
                                       §§goto(addr0260);
                                    }
                                    else
                                    {
                                       §§push(BlueprintGroupConstants.BLUEPRINT_POWERPLANT);
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr019e);
                                          }
                                          §§goto(addr0213);
                                       }
                                       §§goto(addr020d);
                                    }
                                 }
                                 addr019e:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr01af);
                                    }
                                    else
                                    {
                                       addr0229:
                                       §§push(5);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(BlueprintGroupConstants.BLUEPRINT_DECORATION);
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       addr01ce:
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          addr01d5:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc3_ || Boolean(param1))
                                             {
                                                addr01e6:
                                                §§push(4);
                                                if(_loc3_ || Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0229);
                                             }
                                          }
                                          else
                                          {
                                             §§push(BlueprintGroupConstants.BLUEPRINT_GROUNDS);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr020d:
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   addr0213:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr0229);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0240);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr023c);
                                                   }
                                                   §§goto(addr0240);
                                                }
                                                addr023c:
                                                §§goto(addr023b);
                                             }
                                             addr023b:
                                             if(BlueprintGroupConstants.BLUEPRINT_SPECIAL === _loc2_)
                                             {
                                                §§goto(addr0240);
                                             }
                                             else
                                             {
                                                §§push(7);
                                             }
                                             §§goto(addr0260);
                                          }
                                          §§goto(addr0260);
                                       }
                                       §§goto(addr023c);
                                    }
                                    §§goto(addr020d);
                                 }
                                 §§goto(addr0260);
                              }
                              §§goto(addr01ce);
                           }
                           addr0260:
                           switch(§§pop())
                           {
                              case 0:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_RESIDENTIAL_SELECTED);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              case 1:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PRODUCTION_SELECTED);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              case 2:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SHOP_SELECTED);
                                 if(_loc4_)
                                 {
                                 }
                                 break;
                              case 3:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_POWERPLANT_SELECTED);
                                 if(_loc4_ && Boolean(this))
                                 {
                                 }
                                 break;
                              case 4:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_DECORATION_SELECTED);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              case 5:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTURAL_CATEGORY_GROUNDS_SELECTED);
                                 if(_loc3_)
                                 {
                                 }
                                 break;
                              case 6:
                                 sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_SPECIAL_SELECTED);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                           }
                           return;
                        }
                        §§goto(addr0213);
                     }
                     §§goto(addr0159);
                  }
               }
               §§goto(addr01d5);
            }
            §§goto(addr01ce);
         }
         §§goto(addr01e6);
      }
   }
}

