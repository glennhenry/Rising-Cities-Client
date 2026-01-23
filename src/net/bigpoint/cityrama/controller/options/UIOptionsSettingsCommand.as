package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class UIOptionsSettingsCommand extends SimpleCommand implements ICommand
   {
      
      public function UIOptionsSettingsCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         §§push(_loc2_.uiDataDTO.lowTraffic);
         if(!_loc11_)
         {
            §§push(!§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_.uiDataDTO.lowGraphicsQuality);
         if(!(_loc11_ && _loc3_))
         {
            §§push(!§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc2_.uiDataDTO.increasingTips);
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(_loc2_.uiDataDTO.increasingSimbols);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.uiDataDTO.soundActive);
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(_loc2_.uiDataDTO.rcVerification);
         if(!(_loc11_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         §§push(_loc2_.uiDataDTO.fasterNotification);
         if(_loc12_)
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         §§push(_loc2_.uiDataDTO.fullscreenActive);
         if(!_loc11_)
         {
            §§push(§§pop());
         }
         var _loc10_:* = §§pop();
         if(_loc12_)
         {
            §§push(OptionsGlobalVariables.getInstance());
            if(!_loc11_)
            {
               §§push(_loc5_);
               if(_loc12_)
               {
                  §§pop().showFloater = §§pop();
                  if(_loc12_ || Boolean(param1))
                  {
                     §§push(OptionsGlobalVariables.getInstance());
                     if(!_loc11_)
                     {
                        §§push(_loc6_);
                        if(_loc12_)
                        {
                           §§pop().showDropIcons = §§pop();
                           if(!_loc11_)
                           {
                              §§push(OptionsGlobalVariables.getInstance());
                              if(!(_loc11_ && Boolean(this)))
                              {
                                 §§push(_loc3_);
                                 if(!_loc11_)
                                 {
                                    §§pop().normalCitizenAmount = §§pop();
                                    if(_loc12_ || Boolean(param1))
                                    {
                                       addr013a:
                                       §§push(OptionsGlobalVariables.getInstance());
                                       if(!(_loc11_ && Boolean(_loc2_)))
                                       {
                                          §§push(_loc4_);
                                          if(_loc12_ || _loc3_)
                                          {
                                             §§pop().highQuality = §§pop();
                                             if(_loc12_ || Boolean(param1))
                                             {
                                                §§push(OptionsGlobalVariables.getInstance());
                                                if(!_loc11_)
                                                {
                                                   addr017b:
                                                   §§push(_loc8_);
                                                   if(!_loc11_)
                                                   {
                                                      §§goto(addr0183);
                                                   }
                                                   §§goto(addr01cd);
                                                }
                                                §§goto(addr01c5);
                                             }
                                             §§goto(addr01de);
                                          }
                                          §§goto(addr01a8);
                                       }
                                       §§goto(addr017b);
                                    }
                                    §§goto(addr01de);
                                 }
                                 addr0183:
                                 §§pop().showRCVerification = §§pop();
                                 if(_loc12_ || Boolean(this))
                                 {
                                    §§push(OptionsGlobalVariables.getInstance());
                                    if(_loc12_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc12_)
                                       {
                                          addr01a8:
                                          §§pop().fasterNotification = §§pop();
                                          if(_loc12_)
                                          {
                                             addr01b1:
                                             §§push(OptionsGlobalVariables.getInstance());
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                addr01c5:
                                                §§push(_loc10_);
                                                if(!_loc11_)
                                                {
                                                   addr01cd:
                                                   §§pop().fullscreenActive = §§pop();
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      addr01de:
                                                      §§push(OptionsGlobalVariables.getInstance());
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§goto(addr01f4);
                                                      }
                                                      §§goto(addr0211);
                                                   }
                                                   §§goto(addr0205);
                                                }
                                                §§goto(addr01f4);
                                             }
                                             §§goto(addr024b);
                                          }
                                          §§goto(addr0205);
                                       }
                                       addr01f4:
                                       §§pop().soundActive = _loc7_;
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          addr0205:
                                          §§push(OptionsGlobalVariables.getInstance());
                                          if(!_loc11_)
                                          {
                                             addr0211:
                                             §§push(_loc2_.uiDataDTO);
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                §§pop().viewedPlayfieldItemConfigIds = §§pop().viewedPlayfieldItemConfigIds;
                                                if(_loc12_ || Boolean(param1))
                                                {
                                                   addr024f:
                                                   OptionsGlobalVariables.getInstance().viewedQuests = _loc2_.uiDataDTO.viewedQuest;
                                                   addr024b:
                                                }
                                                §§goto(addr0255);
                                             }
                                             §§goto(addr024f);
                                          }
                                          §§goto(addr024b);
                                       }
                                       §§goto(addr0255);
                                    }
                                    §§goto(addr0211);
                                 }
                                 §§goto(addr0255);
                              }
                              §§goto(addr0211);
                           }
                           §§goto(addr01b1);
                        }
                        §§goto(addr01a8);
                     }
                     §§goto(addr017b);
                  }
                  addr0255:
                  return;
               }
               §§goto(addr01a8);
            }
            §§goto(addr017b);
         }
         §§goto(addr013a);
      }
   }
}

