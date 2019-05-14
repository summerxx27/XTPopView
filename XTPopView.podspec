#  valid spec and to remove all comments including this before submitting the sp
Pod::Spec.new do |s|
s.name = 'XTPopView'
s.version = '1.0.1'
s.license = 'MIT'
s.summary = 'An view like XTPopView on iOS.'
s.homepage = 'https://github.com/summerxx27/XTPopView'
s.authors = { 'summerxx27' => '1005430006@qq.com' }
s.source = { :git => 'https://github.com/summerxx27/XTPopView.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = 'XTPopView/XTPopView/*.{h,m}'
end

