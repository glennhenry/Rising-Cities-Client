package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentSecurityBarVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.view.common.components.*;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class DepartmentSecurityBarComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "departmentImage":true,
         "securityGrade1":true,
         "securityGrade2":true,
         "securityGrade3":true,
         "partComponent":true,
         "labelDisplay":true
      };
      
      private var _data:DepartmentSecurityBarVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _sortedConfigSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _label:String = "";
      
      private var _currentThreshold:int;
      
      public var partComponent:SecurityBarPartComponent;
      
      public var labelDisplay:LocaLabel;
      
      public var departmentImage:BriskImageDynaLib;
      
      public var securityGrade1:SecurityGradeComponent;
      
      public var securityGrade2:SecurityGradeComponent;
      
      public var securityGrade3:SecurityGradeComponent;
      
      private var _securityReference:ConfigSecurityGradeDTO;
      
      public function DepartmentSecurityBarComponent()
      {
         super();
      }
      
      public function set data(param1:DepartmentSecurityBarVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this._currentThreshold = this._data.currentAttributePoints;
            this._sortedConfigSecurityGrades = this._data.configSecurityGrades;
            this._securityReference = null;
            this.initSecurityGrades();
            this.successProgress = Math.max(0,this._data.currentAttributePoints);
            this.departmentImage.dynaBmpSourceName = this._data.gfxId.toString();
         }
      }
      
      private function initSecurityGrades() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._sortedConfigSecurityGrades.length)
         {
            switch(_loc1_)
            {
               case 0:
                  this.securityGrade1.data = this.getSecurityStatusVoByIndex(_loc1_);
                  break;
               case 1:
                  this.securityGrade2.data = this.getSecurityStatusVoByIndex(_loc1_);
                  break;
               case 2:
                  this.securityGrade3.data = this.getSecurityStatusVoByIndex(_loc1_);
            }
            _loc1_++;
         }
         this._securityReference = this._sortedConfigSecurityGrades[0];
      }
      
      private function getSecurityStatusVoByIndex(param1:int) : SecurityStatusVo
      {
         var _loc2_:SecurityStatusVo = new SecurityStatusVo(0,0,this._data.type,-1,param1 + 1);
         _loc2_.x = this._sortedConfigSecurityGrades[param1].rangeX;
         _loc2_.y = this._sortedConfigSecurityGrades[param1].rangeY;
         _loc2_.x += this.getThresholdBySecurityGradeDTO(this._sortedConfigSecurityGrades[param1]);
         _loc2_.y += this.getThresholdBySecurityGradeDTO(this._sortedConfigSecurityGrades[param1]);
         _loc2_.x += _loc2_.x + this._data.buildingSizeX;
         _loc2_.y += _loc2_.y + this._data.buildingSizeY;
         return _loc2_;
      }
      
      private function set successProgress(param1:Number) : void
      {
         this.partComponent.data = this.getThresholdData(param1);
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         this._label = param1;
         if(this.labelDisplay)
         {
            this.labelDisplay.text = this.label;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.labelDisplay)
         {
            this.labelDisplay.text = this._label;
         }
         if(param2 is SecurityBarPartComponent)
         {
            param2.addEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
         }
      }
      
      private function handleRollOverBarComponent(param1:Event = null) : void
      {
         param1.target.removeEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
         param1.target.addEventListener("RollOutBarComponent",this.handleRollOutBarComponent);
         this._currentThreshold = (param1.currentTarget as SecurityBarPartComponent).currentThreshold;
         this.initSecurityGrades();
      }
      
      private function handleRollOutBarComponent(param1:Event) : void
      {
         param1.target.addEventListener("RollOverBarComponent",this.handleRollOverBarComponent);
         param1.target.removeEventListener("RollOutBarComponent",this.handleRollOutBarComponent);
         this._currentThreshold = this._data.currentAttributePoints;
         this.initSecurityGrades();
      }
      
      private function getThresholdData(param1:Number) : DepartmentThresholdBarVo
      {
         var _loc5_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:DepartmentThresholdBarVo = new DepartmentThresholdBarVo();
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this.getThresholdDTOsBySecurityReference();
         if(_loc3_ == null || _loc3_.length < 1)
         {
            return _loc2_;
         }
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc2_.thresholds.push(_loc5_.copy);
               if(0 <= _loc5_.threshold)
               {
                  var _loc4_:Number = _loc5_.threshold;
               }
            }
         }
         _loc2_.maxRange = 0;
         _loc2_.currentValue = param1;
         return _loc2_;
      }
      
      private function getThresholdDTOsBySecurityReference() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this._data.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         var _loc2_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         for each(_loc3_ in _loc1_)
         {
            if(this._securityReference.id == _loc3_.optionalConfigId)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function getThresholdBySecurityGradeDTO(param1:ConfigSecurityGradeDTO) : Number
      {
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:Number = param1.id;
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = this._data.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         if(_loc3_ == null)
         {
            return 0;
         }
         var _loc5_:Number = 0;
         for each(_loc4_ in _loc3_)
         {
            if(_loc2_ == _loc4_.optionalConfigId && this._currentThreshold >= _loc4_.threshold)
            {
               _loc5_ = _loc4_.value;
            }
         }
         return _loc5_;
      }
      
      override public function set toolTip(param1:String) : void
      {
         super.toolTip = param1;
         this.partComponent.toolTip = "";
      }
   }
}

