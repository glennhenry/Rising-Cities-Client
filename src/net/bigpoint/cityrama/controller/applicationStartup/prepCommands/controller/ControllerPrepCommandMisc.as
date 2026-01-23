package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.KaTestCommand;
   import net.bigpoint.cityrama.controller.applicationModes.build.BuildGameObjectCommand;
   import net.bigpoint.cityrama.controller.dropIcons.DropIconSetTargetsCommand;
   import net.bigpoint.cityrama.controller.dropIcons.EvaluateFieldDropsCommand;
   import net.bigpoint.cityrama.controller.external.CheckPlayerVersionCommand;
   import net.bigpoint.cityrama.controller.external.OpenExternaLForumCommand;
   import net.bigpoint.cityrama.controller.external.OpenExternalLinkCommand;
   import net.bigpoint.cityrama.controller.field.EndMysteryBuildingUnwrapCommand;
   import net.bigpoint.cityrama.controller.field.LockPlayfieldForSwitch;
   import net.bigpoint.cityrama.controller.field.StartMysteryBuildingUnwrapCommand;
   import net.bigpoint.cityrama.controller.field.UnlockPlayfieldForSwitch;
   import net.bigpoint.cityrama.controller.floater.PrepareBillboardObjectFloaterManagerCommand;
   import net.bigpoint.cityrama.controller.infrastructure.heatmap.ChangeHeatmapViewStateCommand;
   import net.bigpoint.cityrama.controller.levelUp.SubLevelReachedCommand;
   import net.bigpoint.cityrama.controller.logout.ApplicationLogoutCommand;
   import net.bigpoint.cityrama.controller.newsscreen.NewsscreenCheckStartupCommand;
   import net.bigpoint.cityrama.controller.payment.PlayerPaymentPackStartupCommand;
   import net.bigpoint.cityrama.controller.residentSelection.CheckResidentSelectionCommand;
   import net.bigpoint.cityrama.controller.server.ServerConnectionClosed;
   import net.bigpoint.cityrama.controller.urbies.PauseAllWalkersCommand;
   import net.bigpoint.cityrama.controller.urbies.ResumeAllWalkersCommand;
   import net.bigpoint.cityrama.view.cursor.AttachImprovementToCursorCommand;
   import net.bigpoint.cityrama.view.cursor.DetachImprovementFromCursorCommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandMisc extends SimpleCommand
   {
      
      public function ControllerPrepCommandMisc()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            facade.registerCommand(ApplicationNotificationConstants.CHECK_PLAYER_VERSION,CheckPlayerVersionCommand);
            if(_loc3_)
            {
               facade.registerCommand(ApplicationNotificationConstants.APPLICATION_LOGOUT,ApplicationLogoutCommand);
               if(!_loc2_)
               {
                  facade.registerCommand(ApplicationNotificationConstants.CONNECTION_LOST,ServerConnectionClosed);
                  if(_loc3_ || _loc2_)
                  {
                     addr005f:
                     facade.registerCommand(ApplicationNotificationConstants.PAUSE_ALL_WALKERS,PauseAllWalkersCommand);
                     if(!_loc2_)
                     {
                        facade.registerCommand(ApplicationNotificationConstants.RESUME_ALL_WALKERS,ResumeAllWalkersCommand);
                        if(_loc3_ || Boolean(this))
                        {
                           facade.registerCommand(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,DropIconSetTargetsCommand);
                           if(_loc3_)
                           {
                              facade.registerCommand(ApplicationNotificationConstants.EVALUATE_DROPS,EvaluateFieldDropsCommand);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 facade.registerCommand(ApplicationNotificationConstants.CHECK_DAILY_NEWSSCREEN,NewsscreenCheckStartupCommand);
                                 if(!_loc2_)
                                 {
                                    facade.registerCommand(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS,PlayerPaymentPackStartupCommand);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       facade.registerCommand(ApplicationNotificationConstants.CHECK_RESIDENT_SELECTION,CheckResidentSelectionCommand);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          facade.registerCommand(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM,OpenExternaLForumCommand);
                                          if(_loc3_)
                                          {
                                             facade.registerCommand(ApplicationNotificationConstants.KAX_TEST,KaTestCommand);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr0139:
                                                facade.registerCommand(ApplicationNotificationConstants.HIDE_HEATMAP,ChangeHeatmapViewStateCommand);
                                                if(!_loc2_)
                                                {
                                                   addr014b:
                                                   facade.registerCommand(ApplicationNotificationConstants.SHOW_BLINDSPOT_HEATMAP,ChangeHeatmapViewStateCommand);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr0166:
                                                      facade.registerCommand(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ChangeHeatmapViewStateCommand);
                                                      if(!_loc2_)
                                                      {
                                                         facade.registerCommand(ApplicationNotificationConstants.START_MYSTERYBUILDING_UNWRAP,StartMysteryBuildingUnwrapCommand);
                                                         if(!_loc2_)
                                                         {
                                                            facade.registerCommand(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,EndMysteryBuildingUnwrapCommand);
                                                            if(!_loc2_)
                                                            {
                                                               addr019e:
                                                               facade.registerCommand(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,OpenExternalLinkCommand);
                                                               if(_loc3_)
                                                               {
                                                                  addr01b1:
                                                                  facade.registerCommand(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,AttachImprovementToCursorCommand);
                                                                  if(!(_loc2_ && Boolean(param1)))
                                                                  {
                                                                     addr01cb:
                                                                     facade.registerCommand(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR,DetachImprovementFromCursorCommand);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr01dd);
                                                                     }
                                                                  }
                                                                  §§goto(addr024d);
                                                               }
                                                               §§goto(addr01cb);
                                                            }
                                                            §§goto(addr01dd);
                                                         }
                                                         §§goto(addr01b1);
                                                      }
                                                      §§goto(addr01f8);
                                                   }
                                                   §§goto(addr019e);
                                                }
                                                §§goto(addr024d);
                                             }
                                             §§goto(addr0166);
                                          }
                                          §§goto(addr01cb);
                                       }
                                       §§goto(addr0233);
                                    }
                                    addr01dd:
                                    facade.registerCommand(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,LockPlayfieldForSwitch);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr01f8:
                                       facade.registerCommand(ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION,UnlockPlayfieldForSwitch);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          facade.registerCommand(ApplicationNotificationConstants.SUBLEVEL_REACHED,SubLevelReachedCommand);
                                          §§goto(addr0213);
                                       }
                                       §§goto(addr024d);
                                    }
                                    §§goto(addr0213);
                                 }
                                 §§goto(addr0139);
                              }
                              §§goto(addr014b);
                           }
                           §§goto(addr01b1);
                        }
                        §§goto(addr01f8);
                     }
                     §§goto(addr0166);
                  }
                  addr0213:
                  if(_loc3_)
                  {
                     addr0233:
                     facade.registerCommand(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,PrepareBillboardObjectFloaterManagerCommand);
                     if(_loc3_ || Boolean(this))
                     {
                        addr024d:
                        facade.registerCommand(ApplicationNotificationConstants.BUILD_GAMEOBJECT,BuildGameObjectCommand);
                     }
                  }
                  return;
               }
               §§goto(addr005f);
            }
            §§goto(addr01b1);
         }
         §§goto(addr024d);
      }
   }
}

