package net.bigpoint.cityrama.view.assistants.ui.components
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.view.assistants.ui.skins.PatrolRunningInfoSkin;
   import net.bigpoint.cityrama.view.assistants.ui.skins.PatrolVacantInfoSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class PatrolInfoComponent extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "infoText":false,
            "header":true,
            "progressTimer":false
         };
      }
      
      public var header:LocaLabel;
      
      public var infoText:LocaLabel;
      
      public var progressTimer:TimerBarComponent;
      
      private var _data:PatrolViewVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolInfoComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null;
         if(!(_loc2_ && Boolean(this)))
         {
            super.commitProperties();
            if(!(_loc2_ && _loc3_))
            {
               addr0035:
               §§push(this._data);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(_temp_6)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._isDirty);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr0074);
                                 }
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00c9);
                        }
                     }
                  }
                  addr0074:
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.header);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 this.header.text = this._data.name;
                                 if(_loc3_)
                                 {
                                    addr00b1:
                                    addr00b8:
                                    addr00b5:
                                    if(this._data.isActive)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00c9:
                                          §§push(this.infoText);
                                          if(!(_loc2_ && Boolean(_loc1_)))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   addr00f8:
                                                   §§push(ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.info.running")));
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc1_ = §§pop();
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr012f:
                                                      §§push(this.infoText);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(StringUtil.substitute(_loc1_,this._data.emergencyRate));
                                                         if(_loc3_ || Boolean(_loc1_))
                                                         {
                                                            §§pop().text = §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               addr0163:
                                                               §§push(this.progressTimer);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr0181:
                                                                        this.progressTimer.data = this._data.timerVo;
                                                                        addr017d:
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr01d7:
                                                                           this.infoText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.streetPatrol"),String("rcl.miniLayer.streetPatrol.info.vacant"));
                                                                           addr01bc:
                                                                           addr01b8:
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr01d9);
                                                               }
                                                               §§goto(addr0181);
                                                            }
                                                            §§goto(addr01d9);
                                                         }
                                                         §§goto(addr01d7);
                                                      }
                                                      §§goto(addr01bc);
                                                   }
                                                   §§goto(addr01b8);
                                                }
                                                §§goto(addr017d);
                                             }
                                             §§goto(addr0163);
                                          }
                                          else
                                          {
                                             addr01af:
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr01b8);
                                                }
                                             }
                                          }
                                          §§goto(addr01d9);
                                       }
                                       §§goto(addr00f8);
                                    }
                                    else
                                    {
                                       §§push(this.infoText);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr01af);
                                       }
                                    }
                                    §§goto(addr01bc);
                                 }
                                 §§goto(addr012f);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr01b8);
                  }
                  addr01d9:
                  return;
               }
               §§goto(addr00b5);
            }
            §§goto(addr01b8);
         }
         §§goto(addr0035);
      }
      
      public function set data(param1:PatrolViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(RandomUtilities.isEqual(param1,this._data));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     this._data = param1;
                     if(!(_loc2_ && _loc2_))
                     {
                        this._isDirty = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0069:
                           if(this._data.isActive)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 setStyle("skinClass",PatrolRunningInfoSkin);
                                 addr007a:
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00bb:
                                    invalidateProperties();
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00bb);
                           }
                           else
                           {
                              setStyle("skinClass",PatrolVacantInfoSkin);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00bb);
                              }
                           }
                        }
                        addr00c0:
                        return;
                     }
                  }
               }
               §§goto(addr00bb);
            }
            §§goto(addr0069);
         }
         §§goto(addr007a);
      }
   }
}

