package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.floater.FloaterVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import org.puremvc.as3.patterns.observer.Notifier;
   
   public class InformationFloaterManager extends Notifier implements IInformationFloaterManager
   {
      
      public static const EMPTY_RESOURCE_AMOUNT:Number = 0.1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         EMPTY_RESOURCE_AMOUNT = 0.1;
      }
      
      private var _optionsGlobalVars:OptionsGlobalVariables;
      
      private var _floaterObjectVo:IFloaterObjectVo;
      
      private var _container:Sprite;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _information:Vector.<FloaterVo>;
      
      private var _addVector:Vector.<FloaterVo>;
      
      private var _subtractVector:Vector.<FloaterVo>;
      
      private var _destruction:Boolean;
      
      private var _isDirty:Boolean;
      
      private var _containerHeight:Number;
      
      public function InformationFloaterManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               addr0025:
               this._optionsGlobalVars = OptionsGlobalVariables.getInstance();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function prepareInformationFloaterManager(param1:IFloaterObjectVo, param2:SmartObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            this._floaterObjectVo = param1;
            if(!(_loc3_ && _loc3_))
            {
               this._billboardContainer = param2;
               if(_loc4_)
               {
                  this._container = new Sprite();
                  if(_loc4_ || _loc3_)
                  {
                     addr0062:
                     §§push(this._billboardContainer);
                     if(_loc4_)
                     {
                        if(§§pop() == null)
                        {
                           if(_loc4_ || Boolean(param2))
                           {
                              addr008b:
                              this._billboardContainer = new SmartObjectContainer();
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a7:
                                 this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeFloaterHeight);
                                 addr00a3:
                                 if(!_loc3_)
                                 {
                                    addr00b9:
                                    this.changeFloaterHeight(null);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b9);
                           }
                           addr00bf:
                           return;
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr008b);
            }
            §§goto(addr0062);
         }
         §§goto(addr00a3);
      }
      
      private function changeFloaterHeight(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this._floaterObjectVo);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() is BillboardObjectVo);
               if(!(_loc2_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this._containerHeight = this._billboardContainer.height * -0.5;
                        if(_loc2_ && _loc3_)
                        {
                           addr00a4:
                           this._containerHeight = -20;
                        }
                     }
                  }
                  else
                  {
                     addr0093:
                     addr008f:
                     if(this._floaterObjectVo is PlaneObjectVo)
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr00a4);
                        }
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr0093);
            }
            §§goto(addr008f);
         }
         addr00aa:
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this.nullCheck("InformationFloaterManager, prepare before invalidate!");
            if(_loc2_)
            {
               if(this._optionsGlobalVars.showFloater)
               {
                  if(!_loc3_)
                  {
                     addr005a:
                     this._destruction = param1;
                     if(!_loc3_)
                     {
                        if(this._containerHeight == 0)
                        {
                           if(_loc2_)
                           {
                              addr0073:
                              this.changeFloaterHeight(null);
                              if(_loc2_)
                              {
                                 addr007e:
                                 this.checkObjectVo();
                              }
                              §§goto(addr0084);
                           }
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0073);
               }
               addr0084:
               return;
            }
         }
         §§goto(addr005a);
      }
      
      private function checkObjectVo() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:FloaterVo = null;
         if(!(_loc4_ && _loc3_))
         {
            this._addVector = new Vector.<FloaterVo>();
            if(_loc3_)
            {
               this._subtractVector = new Vector.<FloaterVo>();
               if(_loc3_)
               {
                  this._information = new Vector.<FloaterVo>();
                  if(_loc3_)
                  {
                     §§push(this._floaterObjectVo);
                     if(!_loc4_)
                     {
                        if(§§pop().informationFloaterPhase != null)
                        {
                           if(!(_loc4_ && Boolean(_loc1_)))
                           {
                              addr0081:
                              this._isDirty = true;
                              if(!_loc4_)
                              {
                                 this.prepareText();
                                 if(!_loc4_)
                                 {
                                    addr0098:
                                    this.finalize();
                                    if(!_loc3_)
                                    {
                                       addr014c:
                                       _loc2_ = new FloaterVo(_loc1_);
                                       if(!(_loc4_ && Boolean(_loc1_)))
                                       {
                                          this._information.push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             this.finalize();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr0195:
                                                this._floaterObjectVo.informationFloaterCustomText = "";
                                             }
                                             §§goto(addr019e);
                                          }
                                          §§goto(addr0195);
                                       }
                                    }
                                    §§goto(addr019e);
                                 }
                                 else
                                 {
                                    addr0128:
                                    §§push("<br><FONT Face=\'Arial Black\' Size=\'13\' Color=\'#ffffff\'>");
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop() + this._floaterObjectVo.informationFloaterCustomText);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + "</FONT>");
                                       }
                                    }
                                    _loc1_ = §§pop();
                                 }
                              }
                              else
                              {
                                 addr011e:
                                 this._isDirty = true;
                                 if(_loc3_)
                                 {
                                    §§goto(addr0128);
                                 }
                              }
                              §§goto(addr014c);
                           }
                           §§goto(addr0128);
                        }
                        else
                        {
                           §§push(this._floaterObjectVo);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr00b9:
                              §§push(§§pop().informationFloaterCustomText);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() == "");
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       if(_temp_8)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop();
                                             if(_loc3_)
                                             {
                                                §§goto(addr010c);
                                             }
                                             §§goto(addr011e);
                                          }
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr010b);
                                 }
                                 addr010c:
                                 §§goto(addr0104);
                              }
                              addr0104:
                              §§goto(addr0101);
                           }
                           addr0101:
                           §§push(this._floaterObjectVo.informationFloaterCustomText == null);
                           if(_loc3_)
                           {
                              addr010b:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr011e);
                              }
                              §§goto(addr0128);
                           }
                           §§goto(addr019e);
                        }
                        return;
                     }
                     §§goto(addr00b9);
                  }
               }
               §§goto(addr0128);
            }
            §§goto(addr0081);
         }
         §§goto(addr0098);
      }
      
      private function finalize() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:FloaterVo = null;
         var _loc2_:FloaterVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._subtractVector;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc6_)
            {
               break;
            }
            if(§§pop())
            {
               _loc1_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc5_ || Boolean(_loc1_))
               {
                  this._information.push(_loc1_);
               }
               continue;
            }
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc3_ = 0;
                     if(!_loc6_)
                     {
                        addr009c:
                        _loc4_ = this._addVector;
                        while(true)
                        {
                           §§push(§§hasnext(_loc4_,_loc3_));
                           break loop0;
                        }
                        addr00cd:
                        addr00c6:
                     }
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§goto(addr00ec);
                     }
                     §§goto(addr00f7);
                  }
                  addr00ec:
                  this._isDirty = false;
                  if(!_loc6_)
                  {
                     addr00f7:
                     sendNotification(ApplicationNotificationConstants.SHOW_INFO_FLOATER,{
                        "info":this._information,
                        "obj":this._floaterObjectVo,
                        "container":this._container,
                        "height":this._containerHeight
                     });
                  }
                  return;
               }
               §§goto(addr009c);
            }
            §§goto(addr00cd);
         }
         while(§§pop())
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(_loc5_ || Boolean(this))
            {
               this._information.push(_loc2_);
            }
            §§goto(addr00c6);
         }
         §§goto(addr00cd);
      }
      
      private function addAmountSignAndSortToVector(param1:String, param2:Boolean, param3:String = "#ffffff", param4:uint = 1854546) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = "";
         if(!(_loc7_ && Boolean(param3)))
         {
            if(param2)
            {
               if(_loc6_ || Boolean(this))
               {
                  §§push("<FONT Face=\'Arial Black\' Size=\'18\' Color=\'");
                  if(!_loc7_)
                  {
                     §§push(param3);
                     if(_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§goto(addr005b);
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr007a);
                  }
                  addr005b:
                  §§push(§§pop() + "\'>+</FONT>");
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr0079:
                     addr007a:
                     §§push(§§pop() + param1);
                  }
                  §§push(§§pop());
                  if(_loc6_ || param2)
                  {
                     _loc5_ = §§pop();
                     if(!(_loc7_ && param2))
                     {
                        this._addVector.push(new FloaterVo(_loc5_,param4));
                        if(_loc7_ && Boolean(this))
                        {
                        }
                     }
                     else
                     {
                        addr00e0:
                        this._subtractVector.push(new FloaterVo(_loc5_,param4));
                     }
                  }
                  else
                  {
                     addr00d8:
                     _loc5_ = §§pop();
                     addr00d7:
                     if(!_loc7_)
                     {
                        §§goto(addr00e0);
                     }
                  }
               }
               §§goto(addr00f2);
            }
            else
            {
               §§push(param1);
               if(_loc6_ || Boolean(param1))
               {
                  §§goto(addr00d7);
               }
            }
            §§goto(addr00d8);
         }
         addr00f2:
      }
      
      private function prepareText() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 4142
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function nullCheck(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._floaterObjectVo == null)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr002f);
               }
            }
            return;
         }
         addr002f:
         throw new RamaCityError(param1);
      }
   }
}

