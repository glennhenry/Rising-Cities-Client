package net.bigpoint.cityrama.controller.infrastructure.heatmap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import net.bigpoint.cityrama.view.mainMenu.ViewModeMenuMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ChangeHeatmapViewStateCommand extends SimpleCommand implements ICommand
   {
      
      private var _heatMapMediator:SecurityGradeHeatMapMediator;
      
      private var _viewModeMediator:ViewModeMenuMediator;
      
      private var _optionsMediator:OptionsMenuMediator;
      
      private var _basementProxy:BasementViewProxy;
      
      public function ChangeHeatmapViewStateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.getName());
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            this._heatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
            if(!_loc5_)
            {
               addr0041:
               this._viewModeMediator = facade.retrieveMediator(ViewModeMenuMediator.NAME) as ViewModeMenuMediator;
               if(!_loc5_)
               {
                  addr005a:
                  this._optionsMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
                  if(!_loc5_)
                  {
                     this._basementProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
                  }
               }
               var _loc3_:* = _loc2_;
               if(_loc4_ || _loc3_)
               {
                  §§push(ApplicationNotificationConstants.HIDE_HEATMAP);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(_loc3_);
                     if(_loc4_ || Boolean(param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(0);
                              if(_loc5_ && Boolean(param1))
                              {
                              }
                           }
                           else
                           {
                              addr0175:
                              §§push(1);
                              if(_loc4_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ApplicationNotificationConstants.SHOW_BLINDSPOT_HEATMAP);
                           if(_loc4_ || _loc2_)
                           {
                              addr0148:
                              §§push(_loc3_);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§goto(addr0175);
                                    }
                                    else
                                    {
                                       addr018b:
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    §§goto(addr01a3);
                                 }
                                 else
                                 {
                                    §§goto(addr0187);
                                 }
                              }
                              addr0187:
                              §§goto(addr0186);
                           }
                           addr0186:
                           if(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP === _loc3_)
                           {
                              §§goto(addr018b);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr01a3);
                        }
                        addr01a3:
                        switch(§§pop())
                        {
                           case 0:
                              this.hideHeatMap();
                              if(_loc5_)
                              {
                              }
                              break;
                           case 1:
                              this.showBlindSpotHeatMap();
                              if(_loc5_ && Boolean(param1))
                              {
                              }
                              break;
                           case 2:
                              this.showHeatMap(param1.getBody() as String);
                              if(_loc5_ && _loc3_)
                              {
                              }
                        }
                        return;
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr0148);
               }
               §§goto(addr0175);
            }
            §§goto(addr005a);
         }
         §§goto(addr0041);
      }
      
      private function showHeatMap(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._heatMapMediator.showHeatMap(param1);
         }
         var _loc2_:* = param1;
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(ServerTagConstants.FIRE_DEPARTMENT);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        addr014a:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr0186:
                        §§push(1);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.POLICE_DEPARTMENT);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           addr016f:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr0186);
                              }
                              else
                              {
                                 addr01a3:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              §§goto(addr01ba);
                           }
                           else
                           {
                              §§goto(addr019f);
                           }
                        }
                        addr019f:
                        §§goto(addr019e);
                     }
                     addr019e:
                     if(ServerTagConstants.HOSPITAL === _loc2_)
                     {
                        §§goto(addr01a3);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr01ba);
                  }
                  addr01ba:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this._viewModeMediator);
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop().component);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().fireViewButton.selected = true;
                              if(_loc3_)
                              {
                                 §§push(this._optionsMediator);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().component);
                                    if(!_loc3_)
                                    {
                                       addr00b6:
                                       §§pop().subMenueBasement.selected = true;
                                       if(_loc4_ && Boolean(param1))
                                       {
                                       }
                                       break;
                                    }
                                    §§pop().subMenueBasement.selected = true;
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr00f5:
                                    §§push(this._optionsMediator);
                                 }
                                 addr00fb:
                                 §§pop().component.subMenueBasement.selected = true;
                                 addr00f9:
                                 if(_loc3_)
                                 {
                                 }
                              }
                              break;
                           }
                           addr00e1:
                           §§pop().hospitalViewButton.selected = true;
                           if(!(_loc3_ || Boolean(param1)))
                           {
                              break;
                           }
                           §§goto(addr00f5);
                        }
                        else
                        {
                           addr00df:
                           §§push(§§pop().component);
                        }
                        §§goto(addr00e1);
                     case 1:
                        §§push(this._viewModeMediator);
                        if(!_loc4_)
                        {
                           §§push(§§pop().component);
                           if(_loc3_)
                           {
                              §§pop().policeViewButton.selected = true;
                              if(!(_loc3_ || Boolean(_loc2_)))
                              {
                                 break;
                              }
                              §§push(this._optionsMediator);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(§§pop().component);
                                 if(_loc3_)
                                 {
                                    §§goto(addr00b6);
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f9);
                              }
                              §§goto(addr00fb);
                           }
                           else
                           {
                              §§goto(addr00e1);
                           }
                           §§goto(addr00f9);
                        }
                        else
                        {
                           §§goto(addr00df);
                        }
                     case 2:
                        §§goto(addr00df);
                        §§push(this._viewModeMediator);
                  }
                  return;
               }
               §§goto(addr016f);
            }
            §§goto(addr019e);
         }
         §§goto(addr014a);
      }
      
      private function showBlindSpotHeatMap() : void
      {
      }
      
      private function hideHeatMap() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._heatMapMediator);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0034);
                  }
               }
               §§goto(addr003d);
            }
            addr0034:
            this._heatMapMediator.hide();
            if(_loc2_)
            {
               addr003d:
               §§push(this._viewModeMediator);
               if(!_loc1_)
               {
                  §§push(§§pop().component);
                  if(_loc2_ || Boolean(this))
                  {
                     §§pop().policeViewButton.selected = false;
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this._viewModeMediator);
                        if(_loc2_ || _loc2_)
                        {
                           addr0084:
                           §§push(§§pop().component);
                           if(!_loc1_)
                           {
                              addr0095:
                              §§pop().fireViewButton.selected = false;
                              if(!_loc1_)
                              {
                                 addr00a7:
                                 this._viewModeMediator.component.hospitalViewButton.selected = false;
                                 addr00a5:
                                 addr00a1:
                                 if(!_loc1_)
                                 {
                                    this._optionsMediator.component.subMenueBasement.selected = this._basementProxy.isBaseViewEnabled;
                                 }
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0084);
            }
            addr00c6:
            return;
         }
         §§goto(addr00a1);
      }
   }
}

